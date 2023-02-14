// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'git_package_dependency.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

abstract class $GitPackageDependency {
  const $GitPackageDependency();

  String get package;
  String get version;
  String get ref;
  String get url;
  String get path;
  String get resolvedRef;
  DependencyType get type;

  GitPackageDependency copyWith({
    String? package,
    String? version,
    String? ref,
    String? url,
    String? path,
    String? resolvedRef,
    DependencyType? type,
  }) =>
      GitPackageDependency(
        package: package ?? this.package,
        version: version ?? this.version,
        ref: ref ?? this.ref,
        url: url ?? this.url,
        path: path ?? this.path,
        resolvedRef: resolvedRef ?? this.resolvedRef,
        type: type ?? this.type,
      );

  GitPackageDependency copyUsing(
      void Function(GitPackageDependency$Change change) mutator) {
    final change = GitPackageDependency$Change._(
      this.package,
      this.version,
      this.ref,
      this.url,
      this.path,
      this.resolvedRef,
      this.type,
    );
    mutator(change);
    return GitPackageDependency(
      package: change.package,
      version: change.version,
      ref: change.ref,
      url: change.url,
      path: change.path,
      resolvedRef: change.resolvedRef,
      type: change.type,
    );
  }

  @override
  String toString() =>
      "GitPackageDependency(package: $package, version: $version, ref: $ref, url: $url, path: $path, resolvedRef: $resolvedRef, type: $type)";

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      other is GitPackageDependency &&
      other.runtimeType == runtimeType &&
      package == other.package &&
      version == other.version &&
      ref == other.ref &&
      url == other.url &&
      path == other.path &&
      resolvedRef == other.resolvedRef &&
      type == other.type;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
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

class GitPackageDependency$Change {
  GitPackageDependency$Change._(
    this.package,
    this.version,
    this.ref,
    this.url,
    this.path,
    this.resolvedRef,
    this.type,
  );

  String package;
  String version;
  String ref;
  String url;
  String path;
  String resolvedRef;
  DependencyType type;
}

// ignore: avoid_classes_with_only_static_members
class GitPackageDependency$ {
  static final package = Lens<GitPackageDependency, String>(
    (packageContainer) => packageContainer.package,
    (packageContainer, package) => packageContainer.copyWith(package: package),
  );

  static final version = Lens<GitPackageDependency, String>(
    (versionContainer) => versionContainer.version,
    (versionContainer, version) => versionContainer.copyWith(version: version),
  );

  static final ref = Lens<GitPackageDependency, String>(
    (refContainer) => refContainer.ref,
    (refContainer, ref) => refContainer.copyWith(ref: ref),
  );

  static final url = Lens<GitPackageDependency, String>(
    (urlContainer) => urlContainer.url,
    (urlContainer, url) => urlContainer.copyWith(url: url),
  );

  static final path = Lens<GitPackageDependency, String>(
    (pathContainer) => pathContainer.path,
    (pathContainer, path) => pathContainer.copyWith(path: path),
  );

  static final resolvedRef = Lens<GitPackageDependency, String>(
    (resolvedRefContainer) => resolvedRefContainer.resolvedRef,
    (resolvedRefContainer, resolvedRef) =>
        resolvedRefContainer.copyWith(resolvedRef: resolvedRef),
  );

  static final type = Lens<GitPackageDependency, DependencyType>(
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
