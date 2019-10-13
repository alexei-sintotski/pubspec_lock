// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hosted_package_dependency.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

abstract class $HostedPackageDependency {
  String get package;
  String get version;
  String get name;
  String get url;
  DependencyType get type;
  const $HostedPackageDependency();
  HostedPackageDependency copyWith({String package, String version, String name, String url, DependencyType type}) =>
      HostedPackageDependency(
          package: package ?? this.package,
          version: version ?? this.version,
          name: name ?? this.name,
          url: url ?? this.url,
          type: type ?? this.type);
  String toString() =>
      "HostedPackageDependency(package: $package, version: $version, name: $name, url: $url, type: $type)";
  bool operator ==(dynamic other) =>
      other.runtimeType == runtimeType &&
      package == other.package &&
      version == other.version &&
      name == other.name &&
      url == other.url &&
      type == other.type;
  @override
  int get hashCode {
    var result = 17;
    result = 37 * result + package.hashCode;
    result = 37 * result + version.hashCode;
    result = 37 * result + name.hashCode;
    result = 37 * result + url.hashCode;
    result = 37 * result + type.hashCode;
    return result;
  }
}

class HostedPackageDependency$ {
  static final package =
      Lens<HostedPackageDependency, String>((s_) => s_.package, (s_, package) => s_.copyWith(package: package));
  static final version =
      Lens<HostedPackageDependency, String>((s_) => s_.version, (s_, version) => s_.copyWith(version: version));
  static final name = Lens<HostedPackageDependency, String>((s_) => s_.name, (s_, name) => s_.copyWith(name: name));
  static final url = Lens<HostedPackageDependency, String>((s_) => s_.url, (s_, url) => s_.copyWith(url: url));
  static final type =
      Lens<HostedPackageDependency, DependencyType>((s_) => s_.type, (s_, type) => s_.copyWith(type: type));
}
