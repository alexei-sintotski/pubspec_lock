// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_dependency.dart';

// **************************************************************************
// SumTypesGenerator
// **************************************************************************

abstract class _PackageDependencyBase {
  __T iswitch<__T>({
    @required __T Function(SdkPackageDependency) sdk,
    @required __T Function(HostedPackageDependency) hosted,
    @required __T Function(GitPackageDependency) git,
    @required __T Function(PathPackageDependency) path,
  });
  __T iswitcho<__T>({
    __T Function(SdkPackageDependency) sdk,
    __T Function(HostedPackageDependency) hosted,
    __T Function(GitPackageDependency) git,
    __T Function(PathPackageDependency) path,
    @required __T Function() otherwise,
  });
}

class PackageDependency with _PackageDependency implements _PackageDependencyBase {
  const PackageDependency.sdk(
    SdkPackageDependency sdk,
  ) : this._unsafe(sdk: sdk);
  const PackageDependency.hosted(
    HostedPackageDependency hosted,
  ) : this._unsafe(hosted: hosted);
  const PackageDependency.git(
    GitPackageDependency git,
  ) : this._unsafe(git: git);
  const PackageDependency.path(
    PathPackageDependency path,
  ) : this._unsafe(path: path);
  const PackageDependency._unsafe({
    this.sdk,
    this.hosted,
    this.git,
    this.path,
  }) : assert(sdk != null && hosted == null && git == null && path == null ||
            sdk == null && hosted != null && git == null && path == null ||
            sdk == null && hosted == null && git != null && path == null ||
            sdk == null && hosted == null && git == null && path != null);
  static PackageDependency load<__T extends PackageDependencyRecordBase<__T>>(
    __T rec,
  ) {
    if (!(rec.sdk != null && rec.hosted == null && rec.git == null && rec.path == null ||
        rec.sdk == null && rec.hosted != null && rec.git == null && rec.path == null ||
        rec.sdk == null && rec.hosted == null && rec.git != null && rec.path == null ||
        rec.sdk == null && rec.hosted == null && rec.git == null && rec.path != null)) {
      throw Exception("Cannot select a $PackageDependency case given $rec");
    }
    return PackageDependency._unsafe(
      sdk: rec.sdk,
      hosted: rec.hosted,
      git: rec.git,
      path: rec.path,
    );
  }

  __T dump<__T>(
    __T Function({
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

  @override
  __T iswitch<__T>({
    @required __T Function(SdkPackageDependency) sdk,
    @required __T Function(HostedPackageDependency) hosted,
    @required __T Function(GitPackageDependency) git,
    @required __T Function(PathPackageDependency) path,
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

  @override
  __T iswitcho<__T>({
    __T Function(SdkPackageDependency) sdk,
    __T Function(HostedPackageDependency) hosted,
    __T Function(GitPackageDependency) git,
    __T Function(PathPackageDependency) path,
    @required __T Function() otherwise,
  }) {
    __T _otherwise(Object _) => otherwise();
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
