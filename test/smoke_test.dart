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

import 'dart:io';

import 'package:pubspec_lock/src/pubspec_lock.dart';
import 'package:test/test.dart';

// ignore_for_file: avoid_as

void main() {
  final realisticContent = File('${gitRepoRoot()}/pubspec.lock').readAsStringSync();

  group('$PubspecLock().loadFromYamlString', () {
    group('given realistic pubspec.lock content', () {
      test('it does not crash', () {
        PubspecLock.loadFromYamlString(realisticContent);
      });
    });
  });

  group('$PubspecLock.toYaml', () {
    group('given realistic pubspec.lock content', () {
      final pubspecLock = PubspecLock.loadFromYamlString(realisticContent);
      test('it produces equivalent YAML content', () {
        expect(pubspecLock.toYaml(), realisticContent);
      });
    });
  });
}

// ignore: avoid_as
String gitRepoRoot() => (Process.runSync('git', ['rev-parse', '--show-toplevel']).stdout as String).trim();
