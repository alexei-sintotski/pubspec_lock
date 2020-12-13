// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'path_package_dependency.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

// ignore_for_file: join_return_with_assignment
// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes
abstract class $PathPackageDependency {
  const $PathPackageDependency();
  String get package;
  String get version;
  String get path;
  bool get relative;
  DependencyType get type;
  PathPackageDependency copyWith(
          {String package,
          String version,
          String path,
          bool relative,
          DependencyType type}) =>
      PathPackageDependency(
          package: package ?? this.package,
          version: version ?? this.version,
          path: path ?? this.path,
          relative: relative ?? this.relative,
          type: type ?? this.type);
  @override
  String toString() =>
      "PathPackageDependency(package: $package, version: $version, path: $path, relative: $relative, type: $type)";
  @override
  bool operator ==(dynamic other) =>
      other.runtimeType == runtimeType &&
      package == other.package &&
      version == other.version &&
      path == other.path &&
      relative == other.relative &&
      type == other.type;
  @override
  int get hashCode {
    var result = 17;
    result = 37 * result + package.hashCode;
    result = 37 * result + version.hashCode;
    result = 37 * result + path.hashCode;
    result = 37 * result + relative.hashCode;
    result = 37 * result + type.hashCode;
    return result;
  }
}

class PathPackageDependency$ {
  static final package = Lens<PathPackageDependency, String>(
      (s_) => s_.package, (s_, package) => s_.copyWith(package: package));
  static final version = Lens<PathPackageDependency, String>(
      (s_) => s_.version, (s_, version) => s_.copyWith(version: version));
  static final path = Lens<PathPackageDependency, String>(
      (s_) => s_.path, (s_, path) => s_.copyWith(path: path));
  static final relative = Lens<PathPackageDependency, bool>(
      (s_) => s_.relative, (s_, relative) => s_.copyWith(relative: relative));
  static final type = Lens<PathPackageDependency, DependencyType>(
      (s_) => s_.type, (s_, type) => s_.copyWith(type: type));
}

// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_asserts_with_message
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_single_quotes
// ignore_for_file: public_member_api_docs
// ignore_for_file: unused_element
