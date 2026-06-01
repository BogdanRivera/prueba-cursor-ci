#!/bin/bash

# Idea is stolen from: https://stackoverflow.com/a/515170/2926641

FAIL=0

yarn run lint &
bundle exec rubocop -P &
bundle exec slim-lint app/**/*.slim &

for job in `jobs -p`
do
  wait $job || let "FAIL+=1"
done

if [ "$FAIL" == "0" ];
then
  echo "Linted successfully"
else
  echo "Lint failures: $FAIL"
  exit $FAIL
fi
