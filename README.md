# pubspec_lock [![Build Status](https://travis-ci.org/alexei-sintotski/pubspec_lock.svg?branch=master)](https://travis-ci.org/alexei-sintotski/pubspec_lock) [![codecov](https://codecov.io/gh/alexei-sintotski/pubspec_lock/branch/master/graph/badge.svg)](https://codecov.io/gh/alexei-sintotski/pubspec_lock)
[![pubspec_lock version](https://img.shields.io/pub/v/pubspec_lock?label=pubspec_lock)](https://pub.dev/packages/pubspec_lock)
Dart library to access and manipulate content of pubpec.lock files

## Class PubspecLock

PubspecLock is a data type representing data stored in pubspec.lock files.
It provides the following facilities:
- Parser from pubspec.lock YAML string
- Formatter to pubspec.lock YAML string
- https://pub.dev/packages/functional_data is used to provide data type facilities

```
class PubspecLock {
  final Iterable<SdkDependency> sdks;
  final Iterable<PackageDependency> packages;

  const PubspecLock({this.sdks = const {}, this.packages = const {}});
  factory PubspecLock.loadFromYamlString(String content);

  String toYaml();
}
```

## Usage

To use pubspec_lock, add the following dependency to pubspec.yaml:

```
dependencies:
  pubspec_lock:
```

## Full example

The following Dart script check whether all Dart dependencies are taken from pub.dev.

```
import 'dart:io';

import 'package:pubspec_lock/pubspec_lock.dart';

void main() {
  final fileContent = File('pubspec.lock').readAsStringSync();
  final pubspecLock = PubspecLock.loadFromYamlString(fileContent);
  print('Loaded pubspec.lock with '
        '${pubspecLock.packages.length} package dependencies:');

  final depsNotHostedByPubDev = [
    for (final package in pubspecLock.packages)
      if (!isHostedByPubDev(package))
        package
  ];

  if (depsNotHostedByPubDev.isEmpty)
    print('SUCCESS: All dependencies are hosted by pub.dev');
  else {
    print('WARNING: Dependencies hosted outside of pub.dev:');
    depsNotHostedByPubDev.forEach(print);
  }
}

bool isHostedByPubDev(PackageDependency package) =>
    package.iswitcho(
      hosted: (package) => package.url == 'https://pub.dartlang.org',
      otherwise: () => false,
    );
```

