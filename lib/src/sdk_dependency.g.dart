// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sdk_dependency.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

abstract class $SdkDependency {
  String get sdk;
  String get version;
  const $SdkDependency();
  SdkDependency copyWith({String sdk, String version}) =>
      SdkDependency(sdk: sdk ?? this.sdk, version: version ?? this.version);
  String toString() => "SdkDependency(sdk: $sdk, version: $version)";
  bool operator ==(dynamic other) => other.runtimeType == runtimeType && sdk == other.sdk && version == other.version;
  @override
  int get hashCode {
    var result = 17;
    result = 37 * result + sdk.hashCode;
    result = 37 * result + version.hashCode;
    return result;
  }
}

class SdkDependency$ {
  static final sdk = Lens<SdkDependency, String>((s_) => s_.sdk, (s_, sdk) => s_.copyWith(sdk: sdk));
  static final version =
      Lens<SdkDependency, String>((s_) => s_.version, (s_, version) => s_.copyWith(version: version));
}
