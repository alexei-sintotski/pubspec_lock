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

import 'package:functional_data/functional_data.dart';
import 'package:meta/meta.dart';

import '../dependency_type/definition.dart';

part 'git_package_dependency.g.dart';

// ignore_for_file: annotate_overrides

/// Git dependency as specified by https://dart.dev/tools/pub/dependencies
@immutable
@FunctionalData()
class GitPackageDependency extends $GitPackageDependency {
  /// Default constructor
  const GitPackageDependency({
    @required this.package,
    @required this.version,
    @required this.ref,
    @required this.url,
    @required this.path,
    @required this.resolvedRef,
    @required this.type,
  });

  final String package;
  final String version;

  final String ref;
  final String url;
  final String path;
  final String resolvedRef;

  final DependencyType type;
}
