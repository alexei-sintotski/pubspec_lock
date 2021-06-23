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
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
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

import '../dependency_type/serializers.dart';
import 'sdk_package_dependency.dart';

// ignore_for_file: avoid_as
// ignore_for_file: public_member_api_docs

SdkPackageDependency loadSdkPackageDependency(MapEntry<String, dynamic> entry) {
  final definition = entry.value as Map<String, dynamic>;
  return SdkPackageDependency(
    package: entry.key,
    version: definition[_Tokens.version] as String?,
    description: definition[_Tokens.description] as String?,
    type: (definition[_Tokens.dependency] as String?).parseDependencyType(),
  );
}

extension SdkPackageDependencyToJson on SdkPackageDependency {
  Map<String, dynamic> toJson() => <String, dynamic>{
        package: <String, dynamic>{
          _Tokens.dependency: type.format(),
          _Tokens.description: description,
          _Tokens.source: _Tokens.sdk,
          _Tokens.version: version,
        },
      };
}

class _Tokens {
  static const source = 'source';
  static const sdk = 'sdk';
  static const version = 'version';
  static const description = 'description';
  static const dependency = 'dependency';
}
