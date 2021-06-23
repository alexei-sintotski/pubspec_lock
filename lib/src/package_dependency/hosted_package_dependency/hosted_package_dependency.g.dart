// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hosted_package_dependency.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

abstract class $HostedPackageDependency {
  const $HostedPackageDependency();

  String get package;
  String? get version;
  String? get name;
  String? get url;
  DependencyType? get type;

  HostedPackageDependency copyWith(
          {String? package,
          String? version,
          String? name,
          String? url,
          DependencyType? type}) =>
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

// ignore: avoid_classes_with_only_static_members
class HostedPackageDependency$ {
  static final package = Lens<HostedPackageDependency, String>(
    (packageContainer) => packageContainer.package,
    (packageContainer, package) => packageContainer.copyWith(package: package),
  );

  static final version = Lens<HostedPackageDependency, String?>(
    (versionContainer) => versionContainer.version,
    (versionContainer, version) => versionContainer.copyWith(version: version),
  );

  static final name = Lens<HostedPackageDependency, String?>(
    (nameContainer) => nameContainer.name,
    (nameContainer, name) => nameContainer.copyWith(name: name),
  );

  static final url = Lens<HostedPackageDependency, String?>(
    (urlContainer) => urlContainer.url,
    (urlContainer, url) => urlContainer.copyWith(url: url),
  );

  static final type = Lens<HostedPackageDependency, DependencyType?>(
    (typeContainer) => typeContainer.type,
    (typeContainer, type) => typeContainer.copyWith(type: type),
  );
}
