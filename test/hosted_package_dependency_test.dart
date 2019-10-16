/*
 * MIT License
 *
 * Copyright (c) 2019 Alexei Sintotski
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 */

import 'package:pubspec_lock/src/dependency_type.dart';
import 'package:pubspec_lock/src/hosted_package_dependency.dart';
import 'package:pubspec_lock/src/package_dependency.dart';
import 'package:pubspec_lock/src/pubspec_lock.dart';
import 'package:test/test.dart';

void main() {
  group("$PubspecLock.loadFromYamlString", () {
    group("given pubspec.lock with single hosted dependency", () {
      final pubspecLock = PubspecLock.loadFromYamlString(pubspecLockWithHostedDependency);
      test("it produces exactly one dependency object", () {
        expect(pubspecLock.packages.length, 1);
      });
      test("it produces PackageDependency with correct package name", () {
        expect(pubspecLock.packages.first.package(), package);
      });
      test("it produces PackageDependency with correct version", () {
        expect(pubspecLock.packages.first.version(), version);
      });
      test("it produces PackageDependency of correct type", () {
        expect(pubspecLock.packages.first.type(), DependencyType.transitive);
      });
      test("it produces HostedPackageDependency object", () {
        expect(isHostedDependency(pubspecLock.packages.first), isTrue);
      });
      test("it produces HostedPackageDependency object with correct data", () {
        expect(hostedPackageDependency(pubspecLock.packages.first), expectedPackageDependency);
      });
    });
  });
}

const package = 'analyzer';
const version = '0.36.4';
const name = 'analyzer';
const url = 'https://pub.dartlang.org';

const pubspecLockWithHostedDependency = '''
# Generated by pub
# See https://dart.dev/tools/pub/glossary#lockfile
packages:
  $package:
    dependency: transitive
    description:
      name: $name
      url: "$url"
    source: hosted
    version: "$version"
''';

const expectedPackageDependency = HostedPackageDependency(
  package: package,
  version: version,
  name: name,
  url: url,
  type: DependencyType.transitive,
);

bool isHostedDependency(PackageDependency dependency) => dependency.iswitch(
      sdk: (d) => false,
      hosted: (d) => true,
      git: (d) => false,
      path: (d) => false,
    );

HostedPackageDependency hostedPackageDependency(PackageDependency dependency) => dependency.iswitch(
      sdk: (d) => null,
      hosted: (d) => d,
      git: (d) => null,
      path: (d) => null,
    );
