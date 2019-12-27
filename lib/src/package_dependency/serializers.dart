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

import 'git_package_dependency/serializers.dart';
import 'hosted_package_dependency/serializers.dart';
import 'package_dependency.dart';
import 'path_package_dependency/serializers.dart';
import 'sdk_package_dependency/serializers.dart';

// ignore_for_file: avoid_as
// ignore_for_file: public_member_api_docs

extension PackageDependencyFromJson on MapEntry<String, dynamic> {
  PackageDependency loadPackageDependency() {
    final definition = value as Map<String, dynamic>;
    final source = definition[_Tokens.source] as String;
    if (source == _Tokens.sdk) {
      return PackageDependency.sdk(loadSdkPackageDependency());
    } else if (source == _Tokens.hosted) {
      return PackageDependency.hosted(loadHostedPackageDependency());
    } else if (source == _Tokens.git) {
      return PackageDependency.git(loadGitPackageDependency());
    } else if (source == _Tokens.path) {
      return PackageDependency.path(loadPathPackageDependency());
    }
    throw AssertionError('Unknown package source: $source');
  }
}

extension PackageDependencyToJson on PackageDependency {
  Map<String, dynamic> toJson() => iswitch(
        sdk: (p) => p.toJson(),
        hosted: (p) => p.toJson(),
        git: (p) => p.toJson(),
        path: (p) => p.toJson(),
      );
}

class _Tokens {
  static const source = 'source';
  static const sdk = 'sdk';
  static const hosted = 'hosted';
  static const git = 'git';
  static const path = 'path';
}
