// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_dependency.dart';

// **************************************************************************
// SumTypesGenerator
// **************************************************************************

abstract class _$PackageDependency {
  const _$PackageDependency({
    this.sdk,
    this.hosted,
    this.git,
    this.path,
  }) : assert(sdk != null && hosted == null && git == null && path == null ||
            sdk == null && hosted != null && git == null && path == null ||
            sdk == null && hosted == null && git != null && path == null ||
            sdk == null && hosted == null && git == null && path != null);
  static PackageDependency load<$T extends PackageDependencyRecordBase<$T>>(
    $T rec,
  ) {
    if (rec.sdk != null && rec.hosted == null && rec.git == null && rec.path == null) {
      return PackageDependency.sdk(rec.sdk);
    } else if (rec.sdk == null && rec.hosted != null && rec.git == null && rec.path == null) {
      return PackageDependency.hosted(rec.hosted);
    } else if (rec.sdk == null && rec.hosted == null && rec.git != null && rec.path == null) {
      return PackageDependency.git(rec.git);
    } else if (rec.sdk == null && rec.hosted == null && rec.git == null && rec.path != null) {
      return PackageDependency.path(rec.path);
    } else {
      throw Exception("Cannot select a $PackageDependency case given $rec");
    }
  }

  $T dump<$T>(
    $T Function({
      SdkPackageDependency sdk,
      HostedPackageDependency hosted,
      GitPackageDependency git,
      PathPackageDependency path,
    })
        make,
  ) {
    return iswitch(
      sdk: (sdk) => make(sdk: sdk),
      hosted: (hosted) => make(hosted: hosted),
      git: (git) => make(git: git),
      path: (path) => make(path: path),
    );
  }

  $T iswitch<$T>({
    @required $T Function(SdkPackageDependency) sdk,
    @required $T Function(HostedPackageDependency) hosted,
    @required $T Function(GitPackageDependency) git,
    @required $T Function(PathPackageDependency) path,
  }) {
    if (this.sdk != null) {
      return sdk(this.sdk);
    } else if (this.hosted != null) {
      return hosted(this.hosted);
    } else if (this.git != null) {
      return git(this.git);
    } else if (this.path != null) {
      return path(this.path);
    } else {
      throw StateError("an instance of $PackageDependency has no case selected");
    }
  }

  $T iswitcho<$T>({
    $T Function(SdkPackageDependency) sdk,
    $T Function(HostedPackageDependency) hosted,
    $T Function(GitPackageDependency) git,
    $T Function(PathPackageDependency) path,
    @required $T Function() otherwise,
  }) {
    $T _otherwise(Object _) => otherwise();
    return iswitch(
      sdk: sdk ?? _otherwise,
      hosted: hosted ?? _otherwise,
      git: git ?? _otherwise,
      path: path ?? _otherwise,
    );
  }

  @override
  bool operator ==(
    dynamic other,
  ) {
    return other.runtimeType == runtimeType &&
        other.sdk == sdk &&
        other.hosted == hosted &&
        other.git == git &&
        other.path == path;
  }

  @override
  int get hashCode {
    var result = 17;
    result = 37 * result + sdk.hashCode;
    result = 37 * result + hosted.hashCode;
    result = 37 * result + git.hashCode;
    result = 37 * result + path.hashCode;
    return result;
  }

  @override
  String toString() {
    final ctor = iswitch(
      sdk: (value) => "sdk($value)",
      hosted: (value) => "hosted($value)",
      git: (value) => "git($value)",
      path: (value) => "path($value)",
    );
    return "$runtimeType.$ctor";
  }

  @protected
  final SdkPackageDependency sdk;
  @protected
  final HostedPackageDependency hosted;
  @protected
  final GitPackageDependency git;
  @protected
  final PathPackageDependency path;
}

abstract class PackageDependencyRecordBase<Self> {
  SdkPackageDependency get sdk;
  HostedPackageDependency get hosted;
  GitPackageDependency get git;
  PathPackageDependency get path;
}

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
