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
import 'package:pubspec_lock/src/git_package_dependency.dart';
import 'package:pubspec_lock/src/hosted_package_dependency.dart';
import 'package:pubspec_lock/src/path_package_dependency.dart';
import 'package:pubspec_lock/src/sdk_package_dependency.dart';
import 'package:sum_types/sum_types.dart';

part 'package_dependency.g.dart';

/// Dependency sources as specified by https://dart.dev/tools/pub/dependencies
@SumType([
  Case<SdkPackageDependency>(name: 'sdk'),
  Case<HostedPackageDependency>(name: 'hosted'),
  Case<GitPackageDependency>(name: 'git'),
  Case<PathPackageDependency>(name: 'path'),
])
mixin _PackageDependency implements _PackageDependencyBase {}

String packageOfPackageDependency(PackageDependency dep) => dep.iswitch(
      sdk: (d) => d.package,
      hosted: (d) => d.package,
      git: (d) => d.package,
      path: (d) => d.package,
    );

String versionOfPackageDependency(PackageDependency dep) => dep.iswitch(
      sdk: (d) => d.version,
      hosted: (d) => d.version,
      git: (d) => d.version,
      path: (d) => d.version,
    );
