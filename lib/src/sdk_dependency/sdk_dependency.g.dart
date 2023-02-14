// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sdk_dependency.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

abstract class $SdkDependency {
  const $SdkDependency();

  String get sdk;
  String get version;

  SdkDependency copyWith({
    String? sdk,
    String? version,
  }) =>
      SdkDependency(
        sdk: sdk ?? this.sdk,
        version: version ?? this.version,
      );

  SdkDependency copyUsing(void Function(SdkDependency$Change change) mutator) {
    final change = SdkDependency$Change._(
      this.sdk,
      this.version,
    );
    mutator(change);
    return SdkDependency(
      sdk: change.sdk,
      version: change.version,
    );
  }

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

class SdkDependency$Change {
  SdkDependency$Change._(
    this.sdk,
    this.version,
  );

  String sdk;
  String version;
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

// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes
// ignore_for_file: duplicate_ignore
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: prefer_asserts_with_message
// ignore_for_file: prefer_single_quotes
// ignore_for_file: public_member_api_docs
// ignore_for_file: unnecessary_this
