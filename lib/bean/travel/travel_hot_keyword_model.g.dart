// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_hot_keyword_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravelHotKeywordModel _$TravelHotKeywordModelFromJson(
    Map<String, dynamic> json) {
  return TravelHotKeywordModel(
    ResponseStatus: json['ResponseStatus'] == null
        ? null
        : ResponsestatusData.fromJson(
            json['ResponseStatus'] as Map<String, dynamic>),
    result: (json['result'] as List)
        ?.map((e) =>
            e == null ? null : ResultData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TravelHotKeywordModelToJson(
        TravelHotKeywordModel instance) =>
    <String, dynamic>{
      'ResponseStatus': instance.ResponseStatus?.toJson(),
      'result': instance.result?.map((e) => e?.toJson())?.toList(),
    };

ResultData _$ResultDataFromJson(Map<String, dynamic> json) {
  return ResultData(
    prefix: json['prefix'] as String,
    content: json['content'] as String,
    h5Url: json['h5Url'] as String,
    appUrl: json['appUrl'] as String,
    wxUrl: json['wxUrl'] as String,
    mainWxUrl: json['mainWxUrl'] as String,
  );
}

Map<String, dynamic> _$ResultDataToJson(ResultData instance) =>
    <String, dynamic>{
      'prefix': instance.prefix,
      'content': instance.content,
      'h5Url': instance.h5Url,
      'appUrl': instance.appUrl,
      'wxUrl': instance.wxUrl,
      'mainWxUrl': instance.mainWxUrl,
    };

ResponsestatusData _$ResponsestatusDataFromJson(Map<String, dynamic> json) {
  return ResponsestatusData(
    Timestamp: json['Timestamp'] as String,
    Ack: json['Ack'] as String,
    Errors: json['Errors'] as List,
    Extension: (json['Extension'] as List)
        ?.map((e) => e == null
            ? null
            : ExtensionData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ResponsestatusDataToJson(ResponsestatusData instance) =>
    <String, dynamic>{
      'Timestamp': instance.Timestamp,
      'Ack': instance.Ack,
      'Errors': instance.Errors,
      'Extension': instance.Extension?.map((e) => e?.toJson())?.toList(),
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
