#!/bin/bash

# Function to get the current output volume and mute status
get_output_volume() {
  output=$(wpctl get-volume @DEFAULT_SINK@)
  volume=$(echo "$output" | awk '{print $2}')  # Extract volume
  muted=$(echo "$output" | grep -q '\[MUTED\]' && echo "true" || echo "false")  # Check mute status

  # Convert to percentage
  percentage=$(printf "%d" "$(echo "$volume * 100" | bc -l | xargs printf "%.0f")")

  if [[ "$muted" == "true" ]]; then
    echo "muted"
  else
    echo "$percentage"
  fi
}

# Function to get the current microphone volume and mute status
get_input_volume() {
  output=$(wpctl get-volume @DEFAULT_SOURCE@)
  volume=$(echo "$output" | awk '{print $2}')  # Extract volume
  muted=$(echo "$output" | grep -q '\[MUTED\]' && echo "true" || echo "false")  # Check mute status

  # Convert to percentage
  percentage=$(printf "%d" "$(echo "$volume * 100" | bc -l | xargs printf "%.0f")")

  if [[ "$muted" == "true" ]]; then
    echo "muted"
  else
    echo "$percentage"
  fi
}

if [[ "$1" == "input" ]]; then
  # Continuously check for microphone volume changes
  while true; do
    input_volume=$(get_input_volume)
    echo "$input_volume"
    sleep 0.5
  done
elif [[ "$1" == "output" ]]; then
  # Continuously check for output volume changes
  while true; do
    output_volume=$(get_output_volume)
    echo "$output_volume"
    sleep 0.5
  done
else
  echo "Usage: $0 {input|output}"
  exit 1
fi
