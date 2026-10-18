#!/usr/bin/env bash

read -r -p "Enter the principal amount: " principal
read -r -p "Enter the annual interest rate (%): " rate
read -r -p "Enter the time period (years): " time

interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" \
  'BEGIN { printf "%.2f", (p * r * t) / 100 }')
total=$(awk -v p="$principal" -v i="$interest" \
  'BEGIN { printf "%.2f", p + i }')

printf "Simple interest: %s\n" "$interest"
printf "Total amount: %s\n" "$total"