#!/bin/bash

set -u

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG_ROOT="$SCRIPT_DIR/sim_logs"

MODULES=(
  "4bRS_ENCODER"
  "4bRS_DECODER"
  "4bRS_ALL"
  "8bRS_ENCODER"
  "8bRS_DECODER"
  "8bRS_ALL"
)

rm -rf "$LOG_ROOT"
RUN_LOG_DIR="$LOG_ROOT"
mkdir -p "$RUN_LOG_DIR"

TOTAL_COUNT=0
PASS_COUNT=0
FAIL_COUNT=0

run_step() {
  local module="$1"
  local step="$2"
  local log_file="$3"

  echo "[$module] $step"
  if [ "$log_file" = "__NO_LOG__" ]; then
    (
      cd "$SCRIPT_DIR/$module/sim" || exit 1
      ./run "$step"
    )
  else
    (
      cd "$SCRIPT_DIR/$module/sim" || exit 1
      ./run "$step"
    ) >"$log_file" 2>&1
  fi
}

run_module() {
  local module="$1"
  local module_log_dir="$RUN_LOG_DIR/$module"
  local compile_log="$module_log_dir/compile.log"
  local tb_log="$module_log_dir/tb.log"

  mkdir -p "$module_log_dir"
  TOTAL_COUNT=$((TOTAL_COUNT + 1))

  echo "=================================================="
  echo "Running $module"
  echo "Logs: $module_log_dir"
  echo "=================================================="

  if ! run_step "$module" "clean" "__NO_LOG__"; then
    echo "[FAIL] $module : clean failed"
    FAIL_COUNT=$((FAIL_COUNT + 1))
    return
  fi

  if ! run_step "$module" "compile" "$compile_log"; then
    echo "[FAIL] $module : compile failed"
    echo "  -> See $compile_log"
    FAIL_COUNT=$((FAIL_COUNT + 1))
    return
  fi

  if ! run_step "$module" "tb" "$tb_log"; then
    echo "[FAIL] $module : simulation failed"
    echo "  -> See $tb_log"
    FAIL_COUNT=$((FAIL_COUNT + 1))
    return
  fi

  echo "[PASS] $module"
  PASS_COUNT=$((PASS_COUNT + 1))
}

echo "Starting full simulation run"
echo "RangeGuard_RTL root : $SCRIPT_DIR"
echo "Log directory        : $RUN_LOG_DIR"
echo ""

for module in "${MODULES[@]}"; do
  run_module "$module"
  echo ""
done

SUMMARY_LOG="$RUN_LOG_DIR/summary.txt"
{
  echo "RangeGuard_RTL simulation summary"
  echo "Root        : $SCRIPT_DIR"
  echo "Log dir     : $RUN_LOG_DIR"
  echo "Total       : $TOTAL_COUNT"
  echo "Passed      : $PASS_COUNT"
  echo "Failed      : $FAIL_COUNT"
} >"$SUMMARY_LOG"

echo "=================================================="
echo "Simulation Summary"
echo "  Total : $TOTAL_COUNT"
echo "  Pass  : $PASS_COUNT"
echo "  Fail  : $FAIL_COUNT"
echo "  Logs  : $RUN_LOG_DIR"
echo "=================================================="

if [ "$FAIL_COUNT" -ne 0 ]; then
  exit 1
fi

exit 0
