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

// ignore_for_file: avoid_as
// ignore_for_file: public_member_api_docs

import '../dependency_type/serializers.dart';
import 'git_package_dependency.dart';

GitPackageDependency loadGitPackageDependency(MapEntry<String, dynamic> entry) {
  final definition = entry.value as Map<String, dynamic>;
  final description = definition[_Tokens.description] as Map<String, dynamic>;
  return GitPackageDependency(
    package: entry.key,
    version: definition[_Tokens.version] as String,
    ref: description[_Tokens.ref] as String,
    url: description[_Tokens.url] as String,
    path: description[_Tokens.path] as String,
    resolvedRef: description[_Tokens.resolvedRef] as String,
    type: (definition[_Tokens.dependency] as String).parseDependencyType(),
  );
}

extension GitPackageDependencyToJson on GitPackageDependency {
  Map<String, dynamic> toJson() => <String, dynamic>{
        package: <String, dynamic>{
          _Tokens.dependency: type.format(),
          _Tokens.description: <String, dynamic>{
            _Tokens.path: '"$path"',
            _Tokens.ref: ref,
            _Tokens.resolvedRef: '"$resolvedRef"',
            _Tokens.url: url,
          },
          _Tokens.source: _Tokens.git,
          _Tokens.version: version,
        },
      };
}

class _Tokens {
  static const path = 'path';
  static const version = 'version';
  static const description = 'description';
  static const dependency = 'dependency';
  static const url = 'url';
  static const ref = 'ref';
  static const resolvedRef = 'resolved-ref';
  static const source = 'source';
  static const git = 'git';
}
