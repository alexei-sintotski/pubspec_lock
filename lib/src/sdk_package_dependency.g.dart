// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sdk_package_dependency.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

abstract class $SdkPackageDependency {
  String get package;
  String get version;
  String get description;
  DependencyType get type;
  const $SdkPackageDependency();
  SdkPackageDependency copyWith({String package, String version, String description, DependencyType type}) =>
      SdkPackageDependency(
          package: package ?? this.package,
          version: version ?? this.version,
          description: description ?? this.description,
          type: type ?? this.type);
  String toString() =>
      "SdkPackageDependency(package: $package, version: $version, description: $description, type: $type)";
  bool operator ==(dynamic other) =>
      other.runtimeType == runtimeType &&
      package == other.package &&
      version == other.version &&
      description == other.description &&
      type == other.type;
  @override
  int get hashCode {
    var result = 17;
    result = 37 * result + package.hashCode;
    result = 37 * result + version.hashCode;
    result = 37 * result + description.hashCode;
    result = 37 * result + type.hashCode;
    return result;
  }
}

class SdkPackageDependency$ {
  static final package =
      Lens<SdkPackageDependency, String>((s_) => s_.package, (s_, package) => s_.copyWith(package: package));
  static final version =
      Lens<SdkPackageDependency, String>((s_) => s_.version, (s_, version) => s_.copyWith(version: version));
  static final description = Lens<SdkPackageDependency, String>(
      (s_) => s_.description, (s_, description) => s_.copyWith(description: description));
  static final type =
      Lens<SdkPackageDependency, DependencyType>((s_) => s_.type, (s_, type) => s_.copyWith(type: type));
}
