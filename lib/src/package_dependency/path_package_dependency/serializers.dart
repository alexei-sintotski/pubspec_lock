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
import 'path_package_dependency.dart';

extension PathPackageDependencyFromJson on MapEntry<String, dynamic> {
  PathPackageDependency loadPathPackageDependency() {
    final definition = value as Map<String, dynamic>;
    final description = definition[_Tokens.description] as Map<String, dynamic>;
    return PathPackageDependency(
      package: key,
      version: definition[_Tokens.version] as String,
      path: description[_Tokens.path] as String,
      relative: description[_Tokens.relative] as bool,
      type: (definition[_Tokens.dependency] as String).parseDependencyType(),
    );
  }
}

extension PathPackageDependencyToJson on PathPackageDependency {
  Map<String, dynamic> toJson() => <String, dynamic>{
        _Tokens.dependency: type.format(),
        _Tokens.description: <String, dynamic>{
          _Tokens.path: '"$path"',
          _Tokens.relative: relative,
        },
        _Tokens.source: _Tokens.path,
        _Tokens.version: version,
      };
}

class _Tokens {
  static const source = 'source';
  static const path = 'path';
  static const version = 'version';
  static const description = 'description';
  static const dependency = 'dependency';
  static const relative = 'relative';
}
