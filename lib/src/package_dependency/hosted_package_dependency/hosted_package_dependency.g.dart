// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hosted_package_dependency.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

abstract class $HostedPackageDependency {
  const $HostedPackageDependency();

  String get package;
  String get version;
  String get name;
  String get url;
  DependencyType get type;

  HostedPackageDependency copyWith({
    String? package,
    String? version,
    String? name,
    String? url,
    DependencyType? type,
  }) =>
      HostedPackageDependency(
        package: package ?? this.package,
        version: version ?? this.version,
        name: name ?? this.name,
        url: url ?? this.url,
        type: type ?? this.type,
      );

  HostedPackageDependency copyUsing(
      void Function(HostedPackageDependency$Change change) mutator) {
    final change = HostedPackageDependency$Change._(
      this.package,
      this.version,
      this.name,
      this.url,
      this.type,
    );
    mutator(change);
    return HostedPackageDependency(
      package: change.package,
      version: change.version,
      name: change.name,
      url: change.url,
      type: change.type,
    );
  }

  @override
  String toString() =>
      "HostedPackageDependency(package: $package, version: $version, name: $name, url: $url, type: $type)";

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      other is HostedPackageDependency &&
      other.runtimeType == runtimeType &&
      package == other.package &&
      version == other.version &&
      name == other.name &&
      url == other.url &&
      type == other.type;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
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

class HostedPackageDependency$Change {
  HostedPackageDependency$Change._(
    this.package,
    this.version,
    this.name,
    this.url,
    this.type,
  );

  String package;
  String version;
  String name;
  String url;
  DependencyType type;
}

// ignore: avoid_classes_with_only_static_members
class HostedPackageDependency$ {
  static final package = Lens<HostedPackageDependency, String>(
    (packageContainer) => packageContainer.package,
    (packageContainer, package) => packageContainer.copyWith(package: package),
  );

  static final version = Lens<HostedPackageDependency, String>(
    (versionContainer) => versionContainer.version,
    (versionContainer, version) => versionContainer.copyWith(version: version),
  );

  static final name = Lens<HostedPackageDependency, String>(
    (nameContainer) => nameContainer.name,
    (nameContainer, name) => nameContainer.copyWith(name: name),
  );

  static final url = Lens<HostedPackageDependency, String>(
    (urlContainer) => urlContainer.url,
    (urlContainer, url) => urlContainer.copyWith(url: url),
  );

  static final type = Lens<HostedPackageDependency, DependencyType>(
    (typeContainer) => typeContainer.type,
    (typeContainer, type) => typeContainer.copyWith(type: type),
  );
}

// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_dynamic_calls
// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes
// ignore_for_file: duplicate_ignore
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_asserts_with_message
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_single_quotes
// ignore_for_file: public_member_api_docs
// ignore_for_file: unnecessary_this
// ignore_for_file: unused_element
