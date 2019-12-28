# pubspec_lock [![Build Status](https://travis-ci.org/alexei-sintotski/pubspec_lock.svg?branch=master)](https://travis-ci.org/alexei-sintotski/pubspec_lock) [![codecov](https://codecov.io/gh/alexei-sintotski/pubspec_lock/branch/master/graph/badge.svg)](https://codecov.io/gh/alexei-sintotski/pubspec_lock) [![pubspec_lock version](https://img.shields.io/pub/v/pubspec_lock?label=pubspec_lock)](https://pub.dev/packages/pubspec_lock)
Dart library to access and manipulate content of pubpec.lock files

The versions 2.x of this package require Dart 2.7.
Consider version 1.1.0 if you intend to use the package with Dart 2.5 or 2.6.

## Data classes

PubspecLock represents data stored in pubspec.lock files.

https://pub.dev/packages/functional_data is used to provide data type facilities

```
class PubspecLock {
  final Iterable<SdkDependency> sdks;
  final Iterable<PackageDependency> packages;
}
```

SdkDependency provides sdk name and version:

```
@immutable
@FunctionalData()
class SdkDependency {
  /// Default constructor
  const SdkDependency({
    @required this.sdk,
    @required this.version,
  });

  final String sdk;
  final String version;
}
```

PackageDependency represents a package dependency, which can be:
* a hosted dependency,
* an SDK dependency,
* a Git dependency, or
* a path dependency

Please checkout https://dart.dev/tools/pub/dependencies for details.

https://pub.dev/packages/sum_types is used to deal with variations of different package dependency types in a type-safe and concise manner.

```
@immutable
@SumType()
class PackageDependency extends _$PackageDependency {
  const PackageDependency.sdk(SdkPackageDependency sdk) : super(sdk: sdk);
  const PackageDependency.hosted(HostedPackageDependency hosted) : super(hosted: hosted);
  const PackageDependency.git(GitPackageDependency git) : super(git: git);
  const PackageDependency.path(PathPackageDependency path) : super(path: path);

  /// Provides package dependency name
  String package() => iswitch(
        sdk: (d) => d.package,
        hosted: (d) => d.package,
        git: (d) => d.package,
        path: (d) => d.package,
      );

  /// Provides package dependency version
  String version() => iswitch(
        sdk: (d) => d.version,
        hosted: (d) => d.version,
        git: (d) => d.version,
        path: (d) => d.version,
      );

  /// Provides package dependency type -- direct, development, or transitive
  DependencyType type() => iswitch(
        sdk: (d) => d.type,
        hosted: (d) => d.type,
        git: (d) => d.type,
        path: (d) => d.type,
      );
}
```

## Import from YAML

The String extension method `loadPubspecLockFromYaml()` can be used to create a PubspecLock instance from a YAML string:

```
final pubspecLock = File('pubspec.lock').readAsStringSync().loadPubspecLockFromYaml();
```

## Export to YAML

`PubspecLock.toYamlString()` can be used to export PubspecLock object to a YAML string:

```
File('pubspec.lock').writeAsStringSync(pubspecLock.toYamlString());
```

## Full example

The following Dart script checks whether all Dart dependencies are taken from pub.dev.

```
import 'dart:io';

import 'package:pubspec_lock/pubspec_lock.dart';

// ignore_for_file: avoid_print

void main() {
  final pubspecLock = File('pubspec.lock').readAsStringSync().loadPubspecLockFromYaml();
  print('Loaded pubspec.lock with ${pubspecLock.packages.length} package dependencies:');

  final depsNotHostedByPubDev = [
    for (final package in pubspecLock.packages)
      if (!isHostedByPubDev(package))
        package
  ];

  if (depsNotHostedByPubDev.isEmpty) {
    print('SUCCESS: All dependencies are hosted by pub.dev');
  } else {
    print('WARNING: Dependencies hosted outside of pub.dev:');
    depsNotHostedByPubDev.forEach(print);
  }

  File('pubspec.lock').writeAsStringSync(pubspecLock.toYamlString());
}

bool isHostedByPubDev(PackageDependency package) => package.iswitcho(
      hosted: (package) => package.url == 'https://pub.dartlang.org',
      otherwise: () => false,
    );
```
