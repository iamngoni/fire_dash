// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Project _$$_ProjectFromJson(Map<String, dynamic> json) => _$_Project(
      projectId: json['projectId'] as String,
      projectNumber: json['projectNumber'] as String,
      displayName: json['displayName'] as String,
      name: json['name'] as String,
      resources: Resources.fromJson(json['resources'] as Map<String, dynamic>),
      state: json['state'] as String,
      etag: json['etag'] as String,
    );

Map<String, dynamic> _$$_ProjectToJson(_$_Project instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'projectNumber': instance.projectNumber,
      'displayName': instance.displayName,
      'name': instance.name,
      'resources': instance.resources.toJson(),
      'state': instance.state,
      'etag': instance.etag,
    };
