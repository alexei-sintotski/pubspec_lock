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

import 'package:meta/meta.dart';
import 'package:pubspec_lock/src/dependency_type.dart';
import 'package:pubspec_lock/src/hosted_package_dependency.dart';
import 'package:pubspec_lock/src/sdk_package_dependency.dart';
import 'package:yaml/yaml.dart';

import '../package_dependency.dart';

Iterable<PackageDependency> loadPackages(YamlMap yaml) => yaml.containsKey(_Tokens.packages)
    ? (yaml[_Tokens.packages] as YamlMap)
        .entries
        .map((entry) => loadPackageDependency(package: entry.key, definition: entry.value as YamlMap))
    : [];

PackageDependency loadPackageDependency({@required package, @required YamlMap definition}) {
  final source = definition[_Tokens.source] as String;
  if (source == _Tokens.sdk)
    return PackageDependency.sdk(loadSdkPackageDependency(package: package, definition: definition));
  else if (source == _Tokens.hosted)
    return PackageDependency.hosted(HostedPackageDependency(
      package: '',
      version: '',
      name: '',
      url: '',
      type: DependencyType.direct,
    ));
  throw AssertionError("Unknown package source: $source");
}

SdkPackageDependency loadSdkPackageDependency({@required package, @required YamlMap definition}) =>
    SdkPackageDependency(
      package: package,
      version: definition[_Tokens.version] as String,
      description: definition[_Tokens.description] as String,
      type: _packageDependencyTypeMap[definition[_Tokens.dependency] as String],
    );

class _Tokens {
  static const packages = 'packages';
  static const version = 'version';
  static const dependency = 'dependency';
  static const directMain = 'direct main';
  static const directDev = 'direct dev';
  static const transitive = 'transitive';
  static const description = 'description';
  static const source = 'source';
  static const sdk = 'sdk';
  static const hosted = 'hosted';
  static const git = 'git';
  static const path = 'path';
}

const _packageDependencyTypeMap = <String, DependencyType>{
  _Tokens.directMain: DependencyType.direct,
  _Tokens.directDev: DependencyType.development,
  _Tokens.transitive: DependencyType.transitive,
};
