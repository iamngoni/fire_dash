// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resources.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Resources _$ResourcesFromJson(Map<String, dynamic> json) {
  return _Resources.fromJson(json);
}

/// @nodoc
mixin _$Resources {
  @JsonKey(name: 'hostingSite')
  String? get hostingSite => throw _privateConstructorUsedError;
  @JsonKey(name: 'storageBucket')
  String? get storageBucket => throw _privateConstructorUsedError;
  @JsonKey(name: 'locationId')
  String? get locationId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResourcesCopyWith<Resources> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourcesCopyWith<$Res> {
  factory $ResourcesCopyWith(Resources value, $Res Function(Resources) then) =
      _$ResourcesCopyWithImpl<$Res, Resources>;
  @useResult
  $Res call(
      {@JsonKey(name: 'hostingSite') String? hostingSite,
      @JsonKey(name: 'storageBucket') String? storageBucket,
      @JsonKey(name: 'locationId') String? locationId});
}

/// @nodoc
class _$ResourcesCopyWithImpl<$Res, $Val extends Resources>
    implements $ResourcesCopyWith<$Res> {
  _$ResourcesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostingSite = freezed,
    Object? storageBucket = freezed,
    Object? locationId = freezed,
  }) {
    return _then(_value.copyWith(
      hostingSite: freezed == hostingSite
          ? _value.hostingSite
          : hostingSite // ignore: cast_nullable_to_non_nullable
              as String?,
      storageBucket: freezed == storageBucket
          ? _value.storageBucket
          : storageBucket // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResourcesCopyWith<$Res> implements $ResourcesCopyWith<$Res> {
  factory _$$_ResourcesCopyWith(
          _$_Resources value, $Res Function(_$_Resources) then) =
      __$$_ResourcesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'hostingSite') String? hostingSite,
      @JsonKey(name: 'storageBucket') String? storageBucket,
      @JsonKey(name: 'locationId') String? locationId});
}

/// @nodoc
class __$$_ResourcesCopyWithImpl<$Res>
    extends _$ResourcesCopyWithImpl<$Res, _$_Resources>
    implements _$$_ResourcesCopyWith<$Res> {
  __$$_ResourcesCopyWithImpl(
      _$_Resources _value, $Res Function(_$_Resources) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostingSite = freezed,
    Object? storageBucket = freezed,
    Object? locationId = freezed,
  }) {
    return _then(_$_Resources(
      hostingSite: freezed == hostingSite
          ? _value.hostingSite
          : hostingSite // ignore: cast_nullable_to_non_nullable
              as String?,
      storageBucket: freezed == storageBucket
          ? _value.storageBucket
          : storageBucket // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Resources extends _Resources {
  const _$_Resources(
      {@JsonKey(name: 'hostingSite') required this.hostingSite,
      @JsonKey(name: 'storageBucket') required this.storageBucket,
      @JsonKey(name: 'locationId') required this.locationId})
      : super._();

  factory _$_Resources.fromJson(Map<String, dynamic> json) =>
      _$$_ResourcesFromJson(json);

  @override
  @JsonKey(name: 'hostingSite')
  final String? hostingSite;
  @override
  @JsonKey(name: 'storageBucket')
  final String? storageBucket;
  @override
  @JsonKey(name: 'locationId')
  final String? locationId;

  @override
  String toString() {
    return 'Resources(hostingSite: $hostingSite, storageBucket: $storageBucket, locationId: $locationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Resources &&
            (identical(other.hostingSite, hostingSite) ||
                other.hostingSite == hostingSite) &&
            (identical(other.storageBucket, storageBucket) ||
                other.storageBucket == storageBucket) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, hostingSite, storageBucket, locationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResourcesCopyWith<_$_Resources> get copyWith =>
      __$$_ResourcesCopyWithImpl<_$_Resources>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResourcesToJson(
      this,
    );
  }
}

abstract class _Resources extends Resources {
  const factory _Resources(
          {@JsonKey(name: 'hostingSite') required final String? hostingSite,
          @JsonKey(name: 'storageBucket') required final String? storageBucket,
          @JsonKey(name: 'locationId') required final String? locationId}) =
      _$_Resources;
  const _Resources._() : super._();

  factory _Resources.fromJson(Map<String, dynamic> json) =
      _$_Resources.fromJson;

  @override
  @JsonKey(name: 'hostingSite')
  String? get hostingSite;
  @override
  @JsonKey(name: 'storageBucket')
  String? get storageBucket;
  @override
  @JsonKey(name: 'locationId')
  String? get locationId;
  @override
  @JsonKey(ignore: true)
  _$$_ResourcesCopyWith<_$_Resources> get copyWith =>
      throw _privateConstructorUsedError;
}
