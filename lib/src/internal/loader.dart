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
import 'package:yaml/yaml.dart';

import '../dependency_type.dart';
import '../git_package_dependency.dart';
import '../hosted_package_dependency.dart';
import '../package_dependency.dart';
import '../path_package_dependency.dart';
import '../sdk_package_dependency.dart';

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
    return PackageDependency.hosted(loadHostedPackageDependency(package: package, definition: definition));
  else if (source == _Tokens.git)
    return PackageDependency.git(loadGitPackageDependency(package: package, definition: definition));
  else if (source == _Tokens.path)
    return PackageDependency.path(loadPathPackageDependency(package: package, definition: definition));
  throw AssertionError("Unknown package source: $source");
}

SdkPackageDependency loadSdkPackageDependency({@required package, @required YamlMap definition}) =>
    SdkPackageDependency(
      package: package,
      version: definition[_Tokens.version] as String,
      description: definition[_Tokens.description] as String,
      type: _packageDependencyTypeMap[definition[_Tokens.dependency] as String],
    );

HostedPackageDependency loadHostedPackageDependency({@required package, @required YamlMap definition}) {
  final description = definition[_Tokens.description] as YamlMap;
  return HostedPackageDependency(
    package: package,
    version: definition[_Tokens.version] as String,
    name: description[_Tokens.name] as String,
    url: description[_Tokens.url] as String,
    type: _packageDependencyTypeMap[definition[_Tokens.dependency] as String],
  );
}

GitPackageDependency loadGitPackageDependency({@required package, @required YamlMap definition}) {
  final description = definition[_Tokens.description] as YamlMap;
  return GitPackageDependency(
    package: package,
    version: definition[_Tokens.version] as String,
    ref: description[_Tokens.ref] as String,
    url: description[_Tokens.url] as String,
    path: description[_Tokens.path] as String,
    resolvedRef: description[_Tokens.resolvedRef] as String,
    type: _packageDependencyTypeMap[definition[_Tokens.dependency] as String],
  );
}

PathPackageDependency loadPathPackageDependency({@required package, @required YamlMap definition}) {
  final description = definition[_Tokens.description] as YamlMap;
  return PathPackageDependency(
    package: package,
    version: definition[_Tokens.version] as String,
    path: description[_Tokens.path] as String,
    relative: description[_Tokens.relative] as bool,
    type: _packageDependencyTypeMap[definition[_Tokens.dependency] as String],
  );
}

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
  static const name = 'name';
  static const url = 'url';
  static const ref = 'ref';
  static const resolvedRef = 'resolved-ref';
  static const relative = 'relative';
}

const _packageDependencyTypeMap = <String, DependencyType>{
  _Tokens.directMain: DependencyType.direct,
  _Tokens.directDev: DependencyType.development,
  _Tokens.transitive: DependencyType.transitive,
};
