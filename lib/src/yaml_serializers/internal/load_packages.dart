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
 */

import 'package:meta/meta.dart';

import '../../package_dependency.dart';
import '../../package_dependency_variants/dependency_type.dart';
import '../../package_dependency_variants/git_package_dependency.dart';
import '../../package_dependency_variants/hosted_package_dependency.dart';
import '../../package_dependency_variants/path_package_dependency.dart';
import '../../package_dependency_variants/sdk_package_dependency.dart';
import 'tokens.dart';

// ignore_for_file: avoid_as
// ignore_for_file: public_member_api_docs

Iterable<PackageDependency> loadPackages(Map<String, dynamic> jsonMap) => jsonMap.containsKey(Tokens.packages)
    ? (jsonMap[Tokens.packages] as Map<String, dynamic>)
        .entries
        .map((entry) => loadPackageDependency(package: entry.key, definition: entry.value as Map<String, dynamic>))
    : [];

PackageDependency loadPackageDependency({@required String package, @required Map<String, dynamic> definition}) {
  final source = definition[Tokens.source] as String;
  if (source == Tokens.sdk) {
    return PackageDependency.sdk(_loadSdkPackageDependency(package: package, definition: definition));
  } else if (source == Tokens.hosted) {
    return PackageDependency.hosted(_loadHostedPackageDependency(package: package, definition: definition));
  } else if (source == Tokens.git) {
    return PackageDependency.git(_loadGitPackageDependency(package: package, definition: definition));
  } else if (source == Tokens.path) {
    return PackageDependency.path(_loadPathPackageDependency(package: package, definition: definition));
  }
  throw AssertionError('Unknown package source: $source');
}

SdkPackageDependency _loadSdkPackageDependency({
  @required String package,
  @required Map<String, dynamic> definition,
}) =>
    SdkPackageDependency(
      package: package,
      version: definition[Tokens.version] as String,
      description: definition[Tokens.description] as String,
      type: _dependencyTypeMap[definition[Tokens.dependency] as String],
    );

HostedPackageDependency _loadHostedPackageDependency({
  @required String package,
  @required Map<String, dynamic> definition,
}) {
  final description = definition[Tokens.description] as Map<String, dynamic>;
  return HostedPackageDependency(
    package: package,
    version: definition[Tokens.version] as String,
    name: description[Tokens.name] as String,
    url: description[Tokens.url] as String,
    type: _dependencyTypeMap[definition[Tokens.dependency] as String],
  );
}

GitPackageDependency _loadGitPackageDependency({
  @required String package,
  @required Map<String, dynamic> definition,
}) {
  final description = definition[Tokens.description] as Map<String, dynamic>;
  return GitPackageDependency(
    package: package,
    version: definition[Tokens.version] as String,
    ref: description[Tokens.ref] as String,
    url: description[Tokens.url] as String,
    path: description[Tokens.path] as String,
    resolvedRef: description[Tokens.resolvedRef] as String,
    type: _dependencyTypeMap[definition[Tokens.dependency] as String],
  );
}

PathPackageDependency _loadPathPackageDependency({
  @required String package,
  @required Map<String, dynamic> definition,
}) {
  final description = definition[Tokens.description] as Map<String, dynamic>;
  return PathPackageDependency(
    package: package,
    version: definition[Tokens.version] as String,
    path: description[Tokens.path] as String,
    relative: description[Tokens.relative] as bool,
    type: _dependencyTypeMap[definition[Tokens.dependency] as String],
  );
}

const _dependencyTypeMap = <String, DependencyType>{
  Tokens.directMain: DependencyType.direct,
  Tokens.directDev: DependencyType.development,
  Tokens.transitive: DependencyType.transitive,
};
