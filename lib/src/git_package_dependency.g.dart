// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'git_package_dependency.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

abstract class $GitPackageDependency {
  String get package;
  String get version;
  String get ref;
  String get url;
  String get path;
  String get resolvedRef;
  DependencyType get type;
  const $GitPackageDependency();
  GitPackageDependency copyWith(
          {String package,
          String version,
          String ref,
          String url,
          String path,
          String resolvedRef,
          DependencyType type}) =>
      GitPackageDependency(
          package: package ?? this.package,
          version: version ?? this.version,
          ref: ref ?? this.ref,
          url: url ?? this.url,
          path: path ?? this.path,
          resolvedRef: resolvedRef ?? this.resolvedRef,
          type: type ?? this.type);
  String toString() =>
      "GitPackageDependency(package: $package, version: $version, ref: $ref, url: $url, path: $path, resolvedRef: $resolvedRef, type: $type)";
  bool operator ==(dynamic other) =>
      other.runtimeType == runtimeType &&
      package == other.package &&
      version == other.version &&
      ref == other.ref &&
      url == other.url &&
      path == other.path &&
      resolvedRef == other.resolvedRef &&
      type == other.type;
  @override
  int get hashCode {
    var result = 17;
    result = 37 * result + package.hashCode;
    result = 37 * result + version.hashCode;
    result = 37 * result + ref.hashCode;
    result = 37 * result + url.hashCode;
    result = 37 * result + path.hashCode;
    result = 37 * result + resolvedRef.hashCode;
    result = 37 * result + type.hashCode;
    return result;
  }
}

class GitPackageDependency$ {
  static final package =
      Lens<GitPackageDependency, String>((s_) => s_.package, (s_, package) => s_.copyWith(package: package));
  static final version =
      Lens<GitPackageDependency, String>((s_) => s_.version, (s_, version) => s_.copyWith(version: version));
  static final ref = Lens<GitPackageDependency, String>((s_) => s_.ref, (s_, ref) => s_.copyWith(ref: ref));
  static final url = Lens<GitPackageDependency, String>((s_) => s_.url, (s_, url) => s_.copyWith(url: url));
  static final path = Lens<GitPackageDependency, String>((s_) => s_.path, (s_, path) => s_.copyWith(path: path));
  static final resolvedRef = Lens<GitPackageDependency, String>(
      (s_) => s_.resolvedRef, (s_, resolvedRef) => s_.copyWith(resolvedRef: resolvedRef));
  static final type =
      Lens<GitPackageDependency, DependencyType>((s_) => s_.type, (s_, type) => s_.copyWith(type: type));
}
