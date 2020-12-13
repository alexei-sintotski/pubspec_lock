// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hosted_package_dependency.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

// ignore_for_file: join_return_with_assignment
// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes
abstract class $HostedPackageDependency {
  const $HostedPackageDependency();
  String get package;
  String get version;
  String get name;
  String get url;
  DependencyType get type;
  HostedPackageDependency copyWith({String package, String version, String name, String url, DependencyType type}) =>
      HostedPackageDependency(
          package: package ?? this.package,
          version: version ?? this.version,
          name: name ?? this.name,
          url: url ?? this.url,
          type: type ?? this.type);
  @override
  String toString() =>
      "HostedPackageDependency(package: $package, version: $version, name: $name, url: $url, type: $type)";
  @override
  bool operator ==(dynamic other) =>
      other.runtimeType == runtimeType &&
      package == other.package &&
      version == other.version &&
      name == other.name &&
      url == other.url &&
      type == other.type;
  @override
  int get hashCode {
    var result = 17;
    result = 37 * result + package.hashCode;
    result = 37 * result + version.hashCode;
    result = 37 * result + name.hashCode;
    result = 37 * result + url.hashCode;
    result = 37 * result + type.hashCode;
    return result;
  }
}

class HostedPackageDependency$ {
  static final package =
      Lens<HostedPackageDependency, String>((s_) => s_.package, (s_, package) => s_.copyWith(package: package));
  static final version =
      Lens<HostedPackageDependency, String>((s_) => s_.version, (s_, version) => s_.copyWith(version: version));
  static final name = Lens<HostedPackageDependency, String>((s_) => s_.name, (s_, name) => s_.copyWith(name: name));
  static final url = Lens<HostedPackageDependency, String>((s_) => s_.url, (s_, url) => s_.copyWith(url: url));
  static final type =
      Lens<HostedPackageDependency, DependencyType>((s_) => s_.type, (s_, type) => s_.copyWith(type: type));
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
