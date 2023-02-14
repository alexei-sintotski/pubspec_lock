// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pubspec_lock.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

abstract class $PubspecLock {
  const $PubspecLock();

  Iterable<SdkDependency> get sdks;
  Iterable<PackageDependency> get packages;

  PubspecLock copyWith({
    Iterable<SdkDependency>? sdks,
    Iterable<PackageDependency>? packages,
  }) =>
      PubspecLock(
        sdks: sdks ?? this.sdks,
        packages: packages ?? this.packages,
      );

  PubspecLock copyUsing(void Function(PubspecLock$Change change) mutator) {
    final change = PubspecLock$Change._(
      this.sdks,
      this.packages,
    );
    mutator(change);
    return PubspecLock(
      sdks: change.sdks,
      packages: change.packages,
    );
  }

  @override
  String toString() => "PubspecLock(sdks: $sdks, packages: $packages)";

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      other is PubspecLock &&
      other.runtimeType == runtimeType &&
      sdks == other.sdks &&
      packages == other.packages;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode {
    var result = 17;
    result = 37 * result + sdks.hashCode;
    result = 37 * result + packages.hashCode;
    return result;
  }
}

class PubspecLock$Change {
  PubspecLock$Change._(
    this.sdks,
    this.packages,
  );

  Iterable<SdkDependency> sdks;
  Iterable<PackageDependency> packages;
}

// ignore: avoid_classes_with_only_static_members
class PubspecLock$ {
  static final sdks = Lens<PubspecLock, Iterable<SdkDependency>>(
    (sdksContainer) => sdksContainer.sdks,
    (sdksContainer, sdks) => sdksContainer.copyWith(sdks: sdks),
  );

  static final packages = Lens<PubspecLock, Iterable<PackageDependency>>(
    (packagesContainer) => packagesContainer.packages,
    (packagesContainer, packages) =>
        packagesContainer.copyWith(packages: packages),
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
