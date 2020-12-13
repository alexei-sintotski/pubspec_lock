// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sdk_package_dependency.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

// ignore_for_file: join_return_with_assignment
// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes
abstract class $SdkPackageDependency {
  const $SdkPackageDependency();
  String get package;
  String get version;
  String get description;
  DependencyType get type;
  SdkPackageDependency copyWith(
          {String package,
          String version,
          String description,
          DependencyType type}) =>
      SdkPackageDependency(
          package: package ?? this.package,
          version: version ?? this.version,
          description: description ?? this.description,
          type: type ?? this.type);
  @override
  String toString() =>
      "SdkPackageDependency(package: $package, version: $version, description: $description, type: $type)";
  @override
  bool operator ==(dynamic other) =>
      other.runtimeType == runtimeType &&
      package == other.package &&
      version == other.version &&
      description == other.description &&
      type == other.type;
  @override
  int get hashCode {
    var result = 17;
    result = 37 * result + package.hashCode;
    result = 37 * result + version.hashCode;
    result = 37 * result + description.hashCode;
    result = 37 * result + type.hashCode;
    return result;
  }
}

class SdkPackageDependency$ {
  static final package = Lens<SdkPackageDependency, String>(
      (s_) => s_.package, (s_, package) => s_.copyWith(package: package));
  static final version = Lens<SdkPackageDependency, String>(
      (s_) => s_.version, (s_, version) => s_.copyWith(version: version));
  static final description = Lens<SdkPackageDependency, String>(
      (s_) => s_.description,
      (s_, description) => s_.copyWith(description: description));
  static final type = Lens<SdkPackageDependency, DependencyType>(
      (s_) => s_.type, (s_, type) => s_.copyWith(type: type));
}

// ignore_for_file: ARGUMENT_TYPE_NOT_ASSIGNABLE
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_asserts_with_message
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_single_quotes
// ignore_for_file: public_member_api_docs
// ignore_for_file: sort_constructors_first
// ignore_for_file: type_annotate_public_apis
// ignore_for_file: unused_element
