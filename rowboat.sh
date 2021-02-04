#!/bin/bash

set -eo pipefail

# Really? That's it? That's all I gotta do?
function inline_image {
  printf '\033]1338;url='"$1"';alt='"$2"'\a\n'
}

# Turns out 'sleep 0' is not a good thing to run.
if [ $BUILDKITE_PARALLEL_JOB == 0 ]; then
  seed_sleep=1
else 
  (( seed_sleep = BUILDKITE_PARALLEL_JOB * 5 ))
fi

echo "Starting the round..."
echo "Sleeping $seed_sleep seconds..."
echo ""

# Seed the Round
sleep $seed_sleep

# Pick the right GIF for the occasion.
if [ $BUILDKITE_PARALLEL_JOB == 0 ]; then
  inline_image 'artifact://artifacts/kirk.gif' "Let's Begin!"
else
  inline_image 'artifact://artifacts/kirkandbones.gif' "Row Row Row Your Boat"
fi

# It's prettier in BASIC, I swear.
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
printf ", merrily..."
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
