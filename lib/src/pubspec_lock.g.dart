// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pubspec_lock.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

abstract class $PubspecLock {
  Iterable<SdkDependency> get sdks;
  Iterable<PackageDependency> get packages;
  const $PubspecLock();
  PubspecLock copyWith({Iterable<SdkDependency> sdks, Iterable<PackageDependency> packages}) =>
      PubspecLock(sdks: sdks ?? this.sdks, packages: packages ?? this.packages);
  String toString() => "PubspecLock(sdks: $sdks, packages: $packages)";
  bool operator ==(dynamic other) =>
      other.runtimeType == runtimeType && sdks == other.sdks && packages == other.packages;
  @override
  int get hashCode {
    var result = 17;
    result = 37 * result + sdks.hashCode;
    result = 37 * result + packages.hashCode;
    return result;
  }
}

class PubspecLock$ {
  static final sdks =
      Lens<PubspecLock, Iterable<SdkDependency>>((s_) => s_.sdks, (s_, sdks) => s_.copyWith(sdks: sdks));
  static final packages = Lens<PubspecLock, Iterable<PackageDependency>>(
      (s_) => s_.packages, (s_, packages) => s_.copyWith(packages: packages));
}
