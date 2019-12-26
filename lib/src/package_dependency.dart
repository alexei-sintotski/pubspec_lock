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
import 'package:sum_types/sum_types.dart';

import 'dependency_type.dart';
import 'git_package_dependency.dart';
import 'hosted_package_dependency.dart';
import 'path_package_dependency.dart';
import 'sdk_package_dependency.dart';

part 'package_dependency.g.dart';

/// Dependency sources as specified by https://dart.dev/tools/pub/dependencies
@SumType()
class PackageDependency extends _$PackageDependency {
  const PackageDependency.sdk(SdkPackageDependency sdk) : super(sdk: sdk);
  const PackageDependency.hosted(HostedPackageDependency hosted) : super(hosted: hosted);
  const PackageDependency.git(GitPackageDependency git) : super(git: git);
  const PackageDependency.path(PathPackageDependency path) : super(path: path);

  /// Provides package dependency name
  String package() => iswitch(
        sdk: (d) => d.package,
        hosted: (d) => d.package,
        git: (d) => d.package,
        path: (d) => d.package,
      );

  /// Provides package dependency version
  String version() => iswitch(
        sdk: (d) => d.version,
        hosted: (d) => d.version,
        git: (d) => d.version,
        path: (d) => d.version,
      );

  /// Provides package dependency type -- direct, development, or transitive
  DependencyType type() => iswitch(
        sdk: (d) => d.type,
        hosted: (d) => d.type,
        git: (d) => d.type,
        path: (d) => d.type,
      );
}
