// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'path_package_dependency.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

abstract class $PathPackageDependency {
  const $PathPackageDependency();

  String get package;
  String? get version;
  String? get path;
  bool? get relative;
  DependencyType? get type;

  PathPackageDependency copyWith(
          {String? package,
          String? version,
          String? path,
          bool? relative,
          DependencyType? type}) =>
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
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      other is PathPackageDependency &&
      other.runtimeType == runtimeType &&
      package == other.package &&
      version == other.version &&
      path == other.path &&
      relative == other.relative &&
      type == other.type;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
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

// ignore: avoid_classes_with_only_static_members
class PathPackageDependency$ {
  static final package = Lens<PathPackageDependency, String>(
    (packageContainer) => packageContainer.package,
    (packageContainer, package) => packageContainer.copyWith(package: package),
  );

  static final version = Lens<PathPackageDependency, String?>(
    (versionContainer) => versionContainer.version,
    (versionContainer, version) => versionContainer.copyWith(version: version),
  );

  static final path = Lens<PathPackageDependency, String?>(
    (pathContainer) => pathContainer.path,
    (pathContainer, path) => pathContainer.copyWith(path: path),
  );

  static final relative = Lens<PathPackageDependency, bool?>(
    (relativeContainer) => relativeContainer.relative,
    (relativeContainer, relative) =>
        relativeContainer.copyWith(relative: relative),
  );

  static final type = Lens<PathPackageDependency, DependencyType?>(
    (typeContainer) => typeContainer.type,
    (typeContainer, type) => typeContainer.copyWith(type: type),
  );
}
