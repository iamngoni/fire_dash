//
//  fire_dash
//  project
//
//  Created by Ngonidzashe Mangudya on 16/09/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:freezed_annotation/freezed_annotation.dart';

import 'resources.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
class Project with _$Project {
  const factory Project({
    @JsonKey(name: 'projectId') required String projectId,
    @JsonKey(name: 'projectNumber') required String projectNumber,
    @JsonKey(name: 'displayName') required String displayName,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'resources') required Resources resources,
    @JsonKey(name: 'state') required String state,
    @JsonKey(name: 'etag') required String etag,
  }) = _Project;

  const Project._();

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
}
