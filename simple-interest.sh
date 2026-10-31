#!/usr/bin/env bash

# Ask for the principal, annual rate, and time in years.
read -r -p "Principal amount: " principal
read -r -p "Annual interest rate (%): " rate
read -r -p "Time in years: " time

# Use awk to support decimal values in the calculation.
interest=$(awk -v principal="$principal" -v rate="$rate" -v time="$time" \
    'BEGIN { printf "%.10g", principal * rate * time / 100 }')

printf 'Simple Interest = %s\n' "$interest"
