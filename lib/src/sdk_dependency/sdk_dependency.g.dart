// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sdk_dependency.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

abstract class $SdkDependency {
  const $SdkDependency();

  String get sdk;
  String get version;

  SdkDependency copyWith({String? sdk, String? version}) =>
      SdkDependency(sdk: sdk ?? this.sdk, version: version ?? this.version);

  @override
  String toString() => "SdkDependency(sdk: $sdk, version: $version)";

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      other is SdkDependency &&
      other.runtimeType == runtimeType &&
      sdk == other.sdk &&
      version == other.version;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode {
    var result = 17;
    result = 37 * result + sdk.hashCode;
    result = 37 * result + version.hashCode;
    return result;
  }
}

// ignore: avoid_classes_with_only_static_members
class SdkDependency$ {
  static final sdk = Lens<SdkDependency, String>(
    (sdkContainer) => sdkContainer.sdk,
    (sdkContainer, sdk) => sdkContainer.copyWith(sdk: sdk),
  );

  static final version = Lens<SdkDependency, String>(
    (versionContainer) => versionContainer.version,
    (versionContainer, version) => versionContainer.copyWith(version: version),
  );
}
