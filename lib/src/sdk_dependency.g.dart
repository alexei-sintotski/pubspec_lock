// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sdk_dependency.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

abstract class $SdkDependency {
  String get package;
  String get version;
  String get description;
  DependencyType get type;
  const $SdkDependency();
  SdkDependency copyWith({String package, String version, String description, DependencyType type}) => SdkDependency(
      package: package ?? this.package,
      version: version ?? this.version,
      description: description ?? this.description,
      type: type ?? this.type);
  String toString() => "SdkDependency(package: $package, version: $version, description: $description, type: $type)";
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

class SdkDependency$ {
  static final package =
      Lens<SdkDependency, String>((s_) => s_.package, (s_, package) => s_.copyWith(package: package));
  static final version =
      Lens<SdkDependency, String>((s_) => s_.version, (s_, version) => s_.copyWith(version: version));
  static final description =
      Lens<SdkDependency, String>((s_) => s_.description, (s_, description) => s_.copyWith(description: description));
  static final type = Lens<SdkDependency, DependencyType>((s_) => s_.type, (s_, type) => s_.copyWith(type: type));
}
