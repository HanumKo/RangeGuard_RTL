#!/bin/bash

set -u

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

SIM_MODULES=(
  "4bRS_ENCODER"
  "4bRS_DECODER"
  "4bRS_ALL"
  "8bRS_ENCODER"
  "8bRS_DECODER"
  "8bRS_ALL"
)

SYN_MODULES=(
  "4bRS_ENCODER"
  "4bRS_DECODER"
  "8bRS_ENCODER"
  "8bRS_DECODER"
)

echo "Cleaning simulation outputs"
for module in "${SIM_MODULES[@]}"; do
  sim_output_dir="$SCRIPT_DIR/$module/sim/output"
  if [ -d "$sim_output_dir" ]; then
    rm -rf "$sim_output_dir"
    echo "  removed $sim_output_dir"
  fi
done

echo "Cleaning synthesis outputs"
for module in "${SYN_MODULES[@]}"; do
  syn_output_dir="$SCRIPT_DIR/$module/syn/output"
  if [ -d "$syn_output_dir" ]; then
    rm -rf "$syn_output_dir"
    echo "  removed $syn_output_dir"
  fi
done

if [ -d "$SCRIPT_DIR/sim_logs" ]; then
  rm -rf "$SCRIPT_DIR/sim_logs"
  echo "  removed $SCRIPT_DIR/sim_logs"
fi

if [ -d "$SCRIPT_DIR/synth_logs" ]; then
  rm -rf "$SCRIPT_DIR/synth_logs"
  echo "  removed $SCRIPT_DIR/synth_logs"
fi

echo "Clean completed."
