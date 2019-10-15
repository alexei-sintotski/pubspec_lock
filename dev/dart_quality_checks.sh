#!/bin/bash -ex

dartanalyzer --fatal-hints .
pub run test
pub run dependency_validator --ignore=functional_data_generator,sum_types_generator
dev/format_dart_code.sh --set-exit-if-changed

dev/generate_code.sh --delete-conflicting-outputs
if [ -n "$(git status --porcelain -- **/*.g.dart)" ]; then
  exit 1
fi
