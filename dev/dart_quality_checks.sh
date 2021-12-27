#!/bin/bash -ex

dart example/main.dart

dartanalyzer --fatal-hints .
dart run test
dart run dependency_validator
dev/format_dart_code.sh --set-exit-if-changed

dev/generate_code.sh --delete-conflicting-outputs
if [ -n "$(git status --porcelain -- **/*.g.dart)" ]; then
  exit 1
fi

dart pub publish --dry-run
