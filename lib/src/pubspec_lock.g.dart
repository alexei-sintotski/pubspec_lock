// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pubspec_lock.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

// ignore_for_file: join_return_with_assignment
// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes
abstract class $PubspecLock {
  const $PubspecLock();
  Iterable<SdkDependency> get sdks;
  Iterable<PackageDependency> get packages;
  PubspecLock copyWith(
          {Iterable<SdkDependency> sdks,
          Iterable<PackageDependency> packages}) =>
      PubspecLock(sdks: sdks ?? this.sdks, packages: packages ?? this.packages);
  @override
  String toString() => "PubspecLock(sdks: $sdks, packages: $packages)";
  @override
  bool operator ==(dynamic other) =>
      other.runtimeType == runtimeType &&
      sdks == other.sdks &&
      packages == other.packages;
  @override
  int get hashCode {
    var result = 17;
    result = 37 * result + sdks.hashCode;
    result = 37 * result + packages.hashCode;
    return result;
  }
}

class PubspecLock$ {
  static final sdks = Lens<PubspecLock, Iterable<SdkDependency>>(
      (s_) => s_.sdks, (s_, sdks) => s_.copyWith(sdks: sdks));
  static final packages = Lens<PubspecLock, Iterable<PackageDependency>>(
      (s_) => s_.packages, (s_, packages) => s_.copyWith(packages: packages));
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
