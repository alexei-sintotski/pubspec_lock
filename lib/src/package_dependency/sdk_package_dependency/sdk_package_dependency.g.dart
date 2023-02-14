// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sdk_package_dependency.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

abstract class $SdkPackageDependency {
  const $SdkPackageDependency();

  String get package;
  String get version;
  String get description;
  DependencyType get type;

  SdkPackageDependency copyWith({
    String? package,
    String? version,
    String? description,
    DependencyType? type,
  }) =>
      SdkPackageDependency(
        package: package ?? this.package,
        version: version ?? this.version,
        description: description ?? this.description,
        type: type ?? this.type,
      );

  SdkPackageDependency copyUsing(
      void Function(SdkPackageDependency$Change change) mutator) {
    final change = SdkPackageDependency$Change._(
      this.package,
      this.version,
      this.description,
      this.type,
    );
    mutator(change);
    return SdkPackageDependency(
      package: change.package,
      version: change.version,
      description: change.description,
      type: change.type,
    );
  }

  @override
  String toString() =>
      "SdkPackageDependency(package: $package, version: $version, description: $description, type: $type)";

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      other is SdkPackageDependency &&
      other.runtimeType == runtimeType &&
      package == other.package &&
      version == other.version &&
      description == other.description &&
      type == other.type;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode {
    var result = 17;
    result = 37 * result + package.hashCode;
    result = 37 * result + version.hashCode;
    result = 37 * result + description.hashCode;
    result = 37 * result + type.hashCode;
    return result;
  }
}

class SdkPackageDependency$Change {
  SdkPackageDependency$Change._(
    this.package,
    this.version,
    this.description,
    this.type,
  );

  String package;
  String version;
  String description;
  DependencyType type;
}

// ignore: avoid_classes_with_only_static_members
class SdkPackageDependency$ {
  static final package = Lens<SdkPackageDependency, String>(
    (packageContainer) => packageContainer.package,
    (packageContainer, package) => packageContainer.copyWith(package: package),
  );

  static final version = Lens<SdkPackageDependency, String>(
    (versionContainer) => versionContainer.version,
    (versionContainer, version) => versionContainer.copyWith(version: version),
  );

  static final description = Lens<SdkPackageDependency, String>(
    (descriptionContainer) => descriptionContainer.description,
    (descriptionContainer, description) =>
        descriptionContainer.copyWith(description: description),
  );

  static final type = Lens<SdkPackageDependency, DependencyType>(
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
