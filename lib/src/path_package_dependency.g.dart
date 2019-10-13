// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'path_package_dependency.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

abstract class $PathPackageDependency {
  String get package;
  String get version;
  String get path;
  bool get relative;
  const $PathPackageDependency();
  PathPackageDependency copyWith({String package, String version, String path, bool relative}) => PathPackageDependency(
      package: package ?? this.package,
      version: version ?? this.version,
      path: path ?? this.path,
      relative: relative ?? this.relative);
  String toString() => "PathPackageDependency(package: $package, version: $version, path: $path, relative: $relative)";
  bool operator ==(dynamic other) =>
      other.runtimeType == runtimeType &&
      package == other.package &&
      version == other.version &&
      path == other.path &&
      relative == other.relative;
  @override
  int get hashCode {
    var result = 17;
    result = 37 * result + package.hashCode;
    result = 37 * result + version.hashCode;
    result = 37 * result + path.hashCode;
    result = 37 * result + relative.hashCode;
    return result;
  }
}

class PathPackageDependency$ {
  static final package =
      Lens<PathPackageDependency, String>((s_) => s_.package, (s_, package) => s_.copyWith(package: package));
  static final version =
      Lens<PathPackageDependency, String>((s_) => s_.version, (s_, version) => s_.copyWith(version: version));
  static final path = Lens<PathPackageDependency, String>((s_) => s_.path, (s_, path) => s_.copyWith(path: path));
  static final relative =
      Lens<PathPackageDependency, bool>((s_) => s_.relative, (s_, relative) => s_.copyWith(relative: relative));
}
