// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
mixin _$Project {
  @JsonKey(name: 'projectId')
  String get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: 'projectNumber')
  String get projectNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'displayName')
  String get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'resources')
  Resources get resources => throw _privateConstructorUsedError;
  @JsonKey(name: 'state')
  String get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'etag')
  String get etag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res, Project>;
  @useResult
  $Res call(
      {@JsonKey(name: 'projectId') String projectId,
      @JsonKey(name: 'projectNumber') String projectNumber,
      @JsonKey(name: 'displayName') String displayName,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'resources') Resources resources,
      @JsonKey(name: 'state') String state,
      @JsonKey(name: 'etag') String etag});

  $ResourcesCopyWith<$Res> get resources;
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res, $Val extends Project>
    implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? projectNumber = null,
    Object? displayName = null,
    Object? name = null,
    Object? resources = null,
    Object? state = null,
    Object? etag = null,
  }) {
    return _then(_value.copyWith(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      projectNumber: null == projectNumber
          ? _value.projectNumber
          : projectNumber // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      resources: null == resources
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as Resources,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      etag: null == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResourcesCopyWith<$Res> get resources {
    return $ResourcesCopyWith<$Res>(_value.resources, (value) {
      return _then(_value.copyWith(resources: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProjectCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$_ProjectCopyWith(
          _$_Project value, $Res Function(_$_Project) then) =
      __$$_ProjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'projectId') String projectId,
      @JsonKey(name: 'projectNumber') String projectNumber,
      @JsonKey(name: 'displayName') String displayName,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'resources') Resources resources,
      @JsonKey(name: 'state') String state,
      @JsonKey(name: 'etag') String etag});

  @override
  $ResourcesCopyWith<$Res> get resources;
}

/// @nodoc
class __$$_ProjectCopyWithImpl<$Res>
    extends _$ProjectCopyWithImpl<$Res, _$_Project>
    implements _$$_ProjectCopyWith<$Res> {
  __$$_ProjectCopyWithImpl(_$_Project _value, $Res Function(_$_Project) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? projectNumber = null,
    Object? displayName = null,
    Object? name = null,
    Object? resources = null,
    Object? state = null,
    Object? etag = null,
  }) {
    return _then(_$_Project(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      projectNumber: null == projectNumber
          ? _value.projectNumber
          : projectNumber // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      resources: null == resources
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as Resources,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      etag: null == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Project extends _Project {
  const _$_Project(
      {@JsonKey(name: 'projectId') required this.projectId,
      @JsonKey(name: 'projectNumber') required this.projectNumber,
      @JsonKey(name: 'displayName') required this.displayName,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'resources') required this.resources,
      @JsonKey(name: 'state') required this.state,
      @JsonKey(name: 'etag') required this.etag})
      : super._();

  factory _$_Project.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectFromJson(json);

  @override
  @JsonKey(name: 'projectId')
  final String projectId;
  @override
  @JsonKey(name: 'projectNumber')
  final String projectNumber;
  @override
  @JsonKey(name: 'displayName')
  final String displayName;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'resources')
  final Resources resources;
  @override
  @JsonKey(name: 'state')
  final String state;
  @override
  @JsonKey(name: 'etag')
  final String etag;

  @override
  String toString() {
    return 'Project(projectId: $projectId, projectNumber: $projectNumber, displayName: $displayName, name: $name, resources: $resources, state: $state, etag: $etag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Project &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.projectNumber, projectNumber) ||
                other.projectNumber == projectNumber) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.resources, resources) ||
                other.resources == resources) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.etag, etag) || other.etag == etag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, projectId, projectNumber,
      displayName, name, resources, state, etag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectCopyWith<_$_Project> get copyWith =>
      __$$_ProjectCopyWithImpl<_$_Project>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectToJson(
      this,
    );
  }
}

abstract class _Project extends Project {
  const factory _Project(
      {@JsonKey(name: 'projectId') required final String projectId,
      @JsonKey(name: 'projectNumber') required final String projectNumber,
      @JsonKey(name: 'displayName') required final String displayName,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'resources') required final Resources resources,
      @JsonKey(name: 'state') required final String state,
      @JsonKey(name: 'etag') required final String etag}) = _$_Project;
  const _Project._() : super._();

  factory _Project.fromJson(Map<String, dynamic> json) = _$_Project.fromJson;

  @override
  @JsonKey(name: 'projectId')
  String get projectId;
  @override
  @JsonKey(name: 'projectNumber')
  String get projectNumber;
  @override
  @JsonKey(name: 'displayName')
  String get displayName;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'resources')
  Resources get resources;
  @override
  @JsonKey(name: 'state')
  String get state;
  @override
  @JsonKey(name: 'etag')
  String get etag;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectCopyWith<_$_Project> get copyWith =>
      throw _privateConstructorUsedError;
}
