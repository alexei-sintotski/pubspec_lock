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
import 'package:yaml/yaml.dart';

import '../package_dependency.dart';
import '../package_dependency_variants/dependency_type.dart';
import '../package_dependency_variants/git_package_dependency.dart';
import '../package_dependency_variants/hosted_package_dependency.dart';
import '../package_dependency_variants/path_package_dependency.dart';
import '../package_dependency_variants/sdk_package_dependency.dart';

// ignore_for_file: avoid_as
// ignore_for_file: public_member_api_docs

Iterable<PackageDependency> loadPackages(YamlMap yaml) => yaml.containsKey(_packagesKeyword)
    ? _packagesYamlMap(yaml)
        .entries
        .map((entry) => loadPackageDependency(package: entry.key as String, definition: entry.value as YamlMap))
    : [];

PackageDependency loadPackageDependency({@required String package, @required YamlMap definition}) {
  final source = _source(definition);
  if (source == 'sdk') {
    return PackageDependency.sdk(_loadSdkPackageDependency(package: package, definition: definition));
  } else if (source == 'hosted') {
    return PackageDependency.hosted(_loadHostedPackageDependency(package: package, definition: definition));
  } else if (source == 'git') {
    return PackageDependency.git(_loadGitPackageDependency(package: package, definition: definition));
  } else if (source == 'path') {
    return PackageDependency.path(_loadPathPackageDependency(package: package, definition: definition));
  }
  throw AssertionError('Unknown package source: $source');
}

SdkPackageDependency _loadSdkPackageDependency({@required String package, @required YamlMap definition}) =>
    SdkPackageDependency(
      package: package,
      version: _version(definition),
      description: _description(definition),
      type: _packageDependencyType(definition),
    );

HostedPackageDependency _loadHostedPackageDependency({@required String package, @required YamlMap definition}) {
  final description = _descriptionYamlMap(definition);
  return HostedPackageDependency(
    package: package,
    version: _version(definition),
    name: _name(description),
    url: _url(description),
    type: _packageDependencyType(definition),
  );
}

GitPackageDependency _loadGitPackageDependency({@required String package, @required YamlMap definition}) {
  final description = _descriptionYamlMap(definition);
  return GitPackageDependency(
    package: package,
    version: _version(definition),
    ref: _ref(description),
    url: _url(description),
    path: _path(description),
    resolvedRef: _resolvedRef(description),
    type: _packageDependencyType(definition),
  );
}

PathPackageDependency _loadPathPackageDependency({@required String package, @required YamlMap definition}) {
  final description = _descriptionYamlMap(definition);
  return PathPackageDependency(
    package: package,
    version: _version(definition),
    path: _path(description),
    relative: _relative(description),
    type: _packageDependencyType(definition),
  );
}

const _packagesKeyword = 'packages';
YamlMap _packagesYamlMap(YamlMap yaml) => yaml[_packagesKeyword] as YamlMap;
YamlMap _descriptionYamlMap(YamlMap yaml) => yaml['description'] as YamlMap;
String _description(YamlMap yaml) => yaml['description'] as String;
String _name(YamlMap yaml) => yaml['name'] as String;
String _path(YamlMap yaml) => yaml['path'] as String;
String _ref(YamlMap yaml) => yaml['ref'] as String;
bool _relative(YamlMap yaml) => yaml['relative'] as bool;
String _resolvedRef(YamlMap yaml) => yaml['resolved-ref'] as String;
String _source(YamlMap yaml) => yaml['source'] as String;
String _url(YamlMap yaml) => yaml['url'] as String;
String _version(YamlMap yaml) => yaml['version'] as String;
DependencyType _packageDependencyType(YamlMap yaml) => _dependencyTypeMap[yaml['dependency'] as String];

const _dependencyTypeMap = <String, DependencyType>{
  'direct main': DependencyType.direct,
  'direct dev': DependencyType.development,
  'transitive': DependencyType.transitive,
};
