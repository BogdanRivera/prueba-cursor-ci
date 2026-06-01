#!/bin/bash
set -e

if [[ $PERCY == "true" ]]; then
  npx percy exec -- bundle exec rspec --exclude-pattern "$EXCLUDE" $SPEC_FOLDER
else
  bundle exec rspec --exclude-pattern "$EXCLUDE" $SPEC_FOLDER
fi
