#!/bin/bash

set -eo pipefail

(( seed_sleep = BUILDKITE_PARALLEL_JOB * 5 ))

echo "Starting the round..."
echo "Sleeping $seed_sleep seconds..."
echo ""
sleep $seed_sleep
printf "Row"
sleep 1
printf ", row"
sleep 1
printf ", row"
sleep 1 
printf " your" 
sleep 0.5
printf " boat..."
sleep 1
printf " gently"
sleep 1
printf " down"
sleep 1
printf " the"
sleep 0.5
printf " stream\n"
sleep 2
printf "Merrily"
sleep 1
printf ", merrily"
sleep 1
printf ", merrily"
sleep 1
printf ", merrily"
sleep 1
printf " life"
sleep 0.5
printf " is"
sleep 0.5
printf " but"
sleep 0.5 
printf " a"
sleep 0.5
printf " dream\n"