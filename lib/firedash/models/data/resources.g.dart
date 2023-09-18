// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resources.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Resources _$$_ResourcesFromJson(Map<String, dynamic> json) => _$_Resources(
      hostingSite: json['hostingSite'] as String?,
      storageBucket: json['storageBucket'] as String?,
      locationId: json['locationId'] as String?,
    );

Map<String, dynamic> _$$_ResourcesToJson(_$_Resources instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hostingSite', instance.hostingSite);
  writeNotNull('storageBucket', instance.storageBucket);
  writeNotNull('locationId', instance.locationId);
  return val;
}
