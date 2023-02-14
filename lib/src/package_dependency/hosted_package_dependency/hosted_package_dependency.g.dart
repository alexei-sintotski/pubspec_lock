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
  String? get sha256;
  DependencyType get type;

  HostedPackageDependency copyWith({
    String? package,
    String? version,
    String? name,
    String? url,
    String? sha256,
    DependencyType? type,
  }) =>
      HostedPackageDependency(
        package: package ?? this.package,
        version: version ?? this.version,
        name: name ?? this.name,
        url: url ?? this.url,
        sha256: sha256 ?? this.sha256,
        type: type ?? this.type,
      );

  HostedPackageDependency copyUsing(
      void Function(HostedPackageDependency$Change change) mutator) {
    final change = HostedPackageDependency$Change._(
      this.package,
      this.version,
      this.name,
      this.url,
      this.sha256,
      this.type,
    );
    mutator(change);
    return HostedPackageDependency(
      package: change.package,
      version: change.version,
      name: change.name,
      url: change.url,
      sha256: change.sha256,
      type: change.type,
    );
  }

  @override
  String toString() =>
      "HostedPackageDependency(package: $package, version: $version, name: $name, url: $url, sha256: $sha256, type: $type)";

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      other is HostedPackageDependency &&
      other.runtimeType == runtimeType &&
      package == other.package &&
      version == other.version &&
      name == other.name &&
      url == other.url &&
      sha256 == other.sha256 &&
      type == other.type;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode {
    var result = 17;
    result = 37 * result + package.hashCode;
    result = 37 * result + version.hashCode;
    result = 37 * result + name.hashCode;
    result = 37 * result + url.hashCode;
    result = 37 * result + sha256.hashCode;
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
    this.sha256,
    this.type,
  );

  String package;
  String version;
  String name;
  String url;
  String? sha256;
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

  static final sha256 = Lens<HostedPackageDependency, String?>(
    (sha256Container) => sha256Container.sha256,
    (sha256Container, sha256) => sha256Container.copyWith(sha256: sha256),
  );

  static final type = Lens<HostedPackageDependency, DependencyType>(
    (typeContainer) => typeContainer.type,
    (typeContainer, type) => typeContainer.copyWith(type: type),
  );
}

// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes
// ignore_for_file: duplicate_ignore
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: prefer_asserts_with_message
// ignore_for_file: prefer_single_quotes
// ignore_for_file: public_member_api_docs
// ignore_for_file: unnecessary_this
