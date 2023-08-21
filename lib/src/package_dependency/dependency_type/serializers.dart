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

import 'definition.dart';

// ignore_for_file: public_member_api_docs

extension StringToDependencyType on String {
  DependencyType parseDependencyType() => _dependencyTypeMap[this]!;
}

extension DependencyTypeToJson on DependencyType {
  String format() {
    switch (this) {
      case DependencyType.direct:
        return _Tokens.directMain;
      case DependencyType.development:
        return _Tokens.directDev;
      case DependencyType.overridden:
        return _Tokens.directOverridden;
      case DependencyType.transitive:
        return _Tokens.transitive;
    }
  }
}

const _dependencyTypeMap = <String, DependencyType>{
  _Tokens.directMain: DependencyType.direct,
  _Tokens.directDev: DependencyType.development,
  _Tokens.directOverridden: DependencyType.overridden,
  _Tokens.transitive: DependencyType.transitive,
};

class _Tokens {
  static const directMain = 'direct main';
  static const directDev = 'direct dev';
  static const directOverridden = 'direct overridden';
  static const transitive = 'transitive';
}
