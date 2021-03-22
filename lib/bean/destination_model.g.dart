// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinationModel _$DestinationModelFromJson(Map<String, dynamic> json) {
  return DestinationModel(
    navigationPopList: (json['navigationPopList'] as List)
        ?.map((e) => e == null
            ? null
            : NavigationpoplistData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DestinationModelToJson(DestinationModel instance) =>
    <String, dynamic>{
      'navigationPopList':
          instance.navigationPopList?.map((e) => e?.toJson())?.toList(),
    };

NavigationpoplistData _$NavigationpoplistDataFromJson(
    Map<String, dynamic> json) {
  return NavigationpoplistData(
    category: json['category'] as int,
    categoryName: json['categoryName'] as String,
    destAreaList: (json['destAreaList'] as List)
        ?.map((e) => e == null
            ? null
            : DestarealistData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$NavigationpoplistDataToJson(
        NavigationpoplistData instance) =>
    <String, dynamic>{
      'category': instance.category,
      'categoryName': instance.categoryName,
      'destAreaList': instance.destAreaList?.map((e) => e?.toJson())?.toList(),
    };

DestarealistData _$DestarealistDataFromJson(Map<String, dynamic> json) {
  return DestarealistData(
    child: (json['child'] as List)
        ?.map((e) =>
            e == null ? null : ChildData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as int,
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$DestarealistDataToJson(DestarealistData instance) =>
    <String, dynamic>{
      'child': instance.child?.map((e) => e?.toJson())?.toList(),
      'id': instance.id,
      'text': instance.text,
    };

ChildData _$ChildDataFromJson(Map<String, dynamic> json) {
  return ChildData(
    id: json['id'] as int,
    kwd: json['kwd'] as String,
    picUrl: json['picUrl'] as String,
    poiType: json['poiType'] as String,
    tagList: (json['tagList'] as List)
        ?.map((e) =>
            e == null ? null : TaglistData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$ChildDataToJson(ChildData instance) => <String, dynamic>{
      'id': instance.id,
      'kwd': instance.kwd,
      'picUrl': instance.picUrl,
      'poiType': instance.poiType,
      'tagList': instance.tagList?.map((e) => e?.toJson())?.toList(),
      'text': instance.text,
    };

TaglistData _$TaglistDataFromJson(Map<String, dynamic> json) {
  return TaglistData(
    tagName: json['tagName'] as String,
    type: json['type'] as int,
  );
}

Map<String, dynamic> _$TaglistDataToJson(TaglistData instance) =>
    <String, dynamic>{
      'tagName': instance.tagName,
      'type': instance.type,
    };

ResponsestatusData _$ResponsestatusDataFromJson(Map<String, dynamic> json) {
  return ResponsestatusData(
    Ack: json['Ack'] as String,
    Errors: json['Errors'] as List,
    Extension: (json['Extension'] as List)
        ?.map((e) => e == null
            ? null
            : ExtensionData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    Timestamp: json['Timestamp'] as String,
  );
}

Map<String, dynamic> _$ResponsestatusDataToJson(ResponsestatusData instance) =>
    <String, dynamic>{
      'Ack': instance.Ack,
      'Errors': instance.Errors,
      'Extension': instance.Extension?.map((e) => e?.toJson())?.toList(),
      'Timestamp': instance.Timestamp,
    };

ExtensionData _$ExtensionDataFromJson(Map<String, dynamic> json) {
  return ExtensionData(
    Id: json['Id'] as String,
    Value: json['Value'] as String,
  );
}

Map<String, dynamic> _$ExtensionDataToJson(ExtensionData instance) =>
    <String, dynamic>{
      'Id': instance.Id,
      'Value': instance.Value,
    };
