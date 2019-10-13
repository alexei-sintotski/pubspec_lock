#!/bin/bash -ex

dartanalyzer --fatal-warnings **/*.dart
pub run dependency_validator --ignore=functional_data_generator
dartfmt --overwrite --fix --set-exit-if-changed --line-length=120 .

pub run build_runner build --delete-conflicting-outputs
dartfmt --overwrite --fix --line-length=120 .
if [ -n "$(git status --porcelain -- **/*.g.dart)" ]; then
  exit 1
fi
