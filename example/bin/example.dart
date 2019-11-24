import 'dart:io';

import 'package:pubspec_lock/pubspec_lock.dart';

void main() {
  final pubspecLock = PubspecLock.loadFromYamlString(File('pubspec.lock').readAsStringSync());
  print('Loaded pubspec.lock with ${pubspecLock.packages.length} package dependencies:');

  final depsNotHostedByPubDev = [for (final package in pubspecLock.packages) if (!isHostedByPubDev(package)) package];

  if (depsNotHostedByPubDev.isEmpty)
    print('SUCCESS: All dependencies are hosted by pub.dev');
  else {
    print('WARNING: Dependencies hosted outside of pub.dev:');
    depsNotHostedByPubDev.forEach(print);
  }
}

bool isHostedByPubDev(PackageDependency package) =>
    package.iswitcho(hosted: (package) => package.url == 'https://pub.dartlang.org', otherwise: () => false);
