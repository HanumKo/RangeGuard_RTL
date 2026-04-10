#!/bin/bash

set -u

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG_ROOT="$SCRIPT_DIR/synth_logs"

MODULES=(
  "4bRS_ENCODER"
  "4bRS_DECODER"
  "8bRS_ENCODER"
  "8bRS_DECODER"
)

rm -rf "$LOG_ROOT"
mkdir -p "$LOG_ROOT"

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
      cd "$SCRIPT_DIR/$module/syn" || exit 1
      ./run "$step"
    )
  else
    (
      cd "$SCRIPT_DIR/$module/syn" || exit 1
      ./run "$step"
    ) >"$log_file" 2>&1
  fi
}

run_module() {
  local module="$1"
  local module_log_dir="$LOG_ROOT/$module"
  local synth_log="$module_log_dir/synth.log"

  mkdir -p "$module_log_dir"
  TOTAL_COUNT=$((TOTAL_COUNT + 1))

  echo "=================================================="
  echo "Running synthesis for $module"
  echo "Logs: $module_log_dir"
  echo "=================================================="

  if ! run_step "$module" "clean" "__NO_LOG__"; then
    echo "[FAIL] $module : clean failed"
    FAIL_COUNT=$((FAIL_COUNT + 1))
    return
  fi

  if ! run_step "$module" "synth" "$synth_log"; then
    echo "[FAIL] $module : synthesis failed"
    echo "  -> See $synth_log"
    FAIL_COUNT=$((FAIL_COUNT + 1))
    return
  fi

  echo "[PASS] $module"
  PASS_COUNT=$((PASS_COUNT + 1))
}

echo "Starting full synthesis run"
echo "RangeGuard_RTL root : $SCRIPT_DIR"
echo "Log directory        : $LOG_ROOT"
echo ""

for module in "${MODULES[@]}"; do
  run_module "$module"
  echo ""
done

SUMMARY_LOG="$LOG_ROOT/summary.txt"
{
  echo "RangeGuard_RTL synthesis summary"
  echo "Root        : $SCRIPT_DIR"
  echo "Log dir     : $LOG_ROOT"
  echo "Total       : $TOTAL_COUNT"
  echo "Passed      : $PASS_COUNT"
  echo "Failed      : $FAIL_COUNT"
} >"$SUMMARY_LOG"

echo "=================================================="
echo "Synthesis Summary"
echo "  Total : $TOTAL_COUNT"
echo "  Pass  : $PASS_COUNT"
echo "  Fail  : $FAIL_COUNT"
echo "  Logs  : $LOG_ROOT"
echo "=================================================="

if [ "$FAIL_COUNT" -ne 0 ]; then
  exit 1
fi

exit 0
