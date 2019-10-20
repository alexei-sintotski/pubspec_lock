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

import 'package:pubspec_lock/src/pubspec_lock.dart';
import 'package:pubspec_lock/src/sdk_dependency.dart';
import 'package:test/test.dart';

void main() {
  group("$PubspecLock.loadFromYamlString", () {
    group("given pubspec.lock with SDK dependency", () {
      final pubspecLock = PubspecLock.loadFromYamlString(pubspecLockWithSdkDependency);
      test("it provides a single SDK dependency object", () {
        expect(pubspecLock.sdks.length, 1);
      });
      test("it provides a correct SDK dependency object", () {
        expect(pubspecLock.sdks.first, sdkDependencyReference);
      });
    });

    group("given pubspec.lock without sdk dependencies", () {
      final pubspecLock = PubspecLock.loadFromYamlString(pubspecLockWithoutSdkDependencies);
      test("it provides no SDK dependencies", () {
        expect(pubspecLock.sdks, isEmpty);
      });
    });
  });

  group("$PubspecLock.toYaml", () {
    group("given given pubspec.lock with SDK dependency", () {
      final pubspecLock = PubspecLock.loadFromYamlString(pubspecLockWithSdkDependency);
      final output = pubspecLock.toYaml();
      test("it produces equivalent YAML content", () {
        expect(output, pubspecLockWithSdkDependency);
      });
    });
  });
}

const pubspecLockWithSdkDependency = '''
# Generated by pub
# See https://dart.dev/tools/pub/glossary#lockfile
sdks:
  dart: ">=2.5.0 <3.0.0"
''';

const sdkDependencyReference = SdkDependency(sdk: 'dart', version: '>=2.5.0 <3.0.0');

const pubspecLockWithoutSdkDependencies = '''
# Generated by pub
# See https://dart.dev/tools/pub/glossary#lockfile
packages:
  analyzer:
    dependency: transitive
    description:
      name: analyzer
      url: "https://pub.dartlang.org"
    source: hosted
    version: "0.36.4"
  args:
    dependency: transitive
    description:
      name: args
      url: "https://pub.dartlang.org"
    source: hosted
    version: "1.5.2"
  async:
    dependency: transitive
    description:
      name: async
      url: "https://pub.dartlang.org"
    source: hosted
    version: "2.4.0"
''';
