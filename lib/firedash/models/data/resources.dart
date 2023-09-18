//
//  fire_dash
//  resources
//
//  Created by Ngonidzashe Mangudya on 16/09/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:freezed_annotation/freezed_annotation.dart';

part 'resources.freezed.dart';
part 'resources.g.dart';

@freezed
class Resources with _$Resources {
  const factory Resources({
    @JsonKey(name: 'hostingSite') required String? hostingSite,
    @JsonKey(name: 'storageBucket') required String? storageBucket,
    @JsonKey(name: 'locationId') required String? locationId,
  }) = _Resources;

  const Resources._();

  factory Resources.fromJson(Map<String, dynamic> json) =>
      _$ResourcesFromJson(json);
}
