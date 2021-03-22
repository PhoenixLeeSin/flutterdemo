// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_tab_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravelTabModel _$TravelTabModelFromJson(Map<String, dynamic> json) {
  return TravelTabModel(
    ResponseStatus: json['ResponseStatus'] == null
        ? null
        : ResponsestatusData.fromJson(
            json['ResponseStatus'] as Map<String, dynamic>),
    abTestResult: json['abTestResult'] as String,
    currentTime: json['currentTime'] as String,
    district: json['district'] == null
        ? null
        : DistrictData.fromJson(json['district'] as Map<String, dynamic>),
    subjectModules: (json['subjectModules'] as List)
        ?.map((e) => e == null
            ? null
            : SubjectmodulesData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TravelTabModelToJson(TravelTabModel instance) =>
    <String, dynamic>{
      'ResponseStatus': instance.ResponseStatus?.toJson(),
      'abTestResult': instance.abTestResult,
      'currentTime': instance.currentTime,
      'district': instance.district?.toJson(),
      'subjectModules':
          instance.subjectModules?.map((e) => e?.toJson())?.toList(),
    };

SubjectmodulesData _$SubjectmodulesDataFromJson(Map<String, dynamic> json) {
  return SubjectmodulesData(
    moduleType: json['moduleType'] as int,
    subjectOperationThemeItemDto: json['subjectOperationThemeItemDto'] == null
        ? null
        : SubjectoperationthemeitemdtoData.fromJson(
            json['subjectOperationThemeItemDto'] as Map<String, dynamic>),
    virtualType: json['virtualType'] as int,
  );
}

Map<String, dynamic> _$SubjectmodulesDataToJson(SubjectmodulesData instance) =>
    <String, dynamic>{
      'moduleType': instance.moduleType,
      'subjectOperationThemeItemDto':
          instance.subjectOperationThemeItemDto?.toJson(),
      'virtualType': instance.virtualType,
    };

SubjectoperationthemeitemdtoData _$SubjectoperationthemeitemdtoDataFromJson(
    Map<String, dynamic> json) {
  return SubjectoperationthemeitemdtoData(
    moreTextForApp: json['moreTextForApp'] as String,
    moreTextForH5: json['moreTextForH5'] as String,
    moreTextForMainWx: json['moreTextForMainWx'] as String,
    moreTextForWx: json['moreTextForWx'] as String,
    styleType: json['styleType'] as int,
    themes: json['themes'] as List,
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$SubjectoperationthemeitemdtoDataToJson(
        SubjectoperationthemeitemdtoData instance) =>
    <String, dynamic>{
      'moreTextForApp': instance.moreTextForApp,
      'moreTextForH5': instance.moreTextForH5,
      'moreTextForMainWx': instance.moreTextForMainWx,
      'moreTextForWx': instance.moreTextForWx,
      'styleType': instance.styleType,
      'themes': instance.themes,
      'title': instance.title,
    };

DistrictData _$DistrictDataFromJson(Map<String, dynamic> json) {
  return DistrictData(
    districtId: json['districtId'] as int,
    districtName: json['districtName'] as String,
    groups: (json['groups'] as List)
        ?.map((e) =>
            e == null ? null : GroupsData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DistrictDataToJson(DistrictData instance) =>
    <String, dynamic>{
      'districtId': instance.districtId,
      'districtName': instance.districtName,
      'groups': instance.groups?.map((e) => e?.toJson())?.toList(),
    };

GroupsData _$GroupsDataFromJson(Map<String, dynamic> json) {
  return GroupsData(
    code: json['code'] as String,
    name: json['name'] as String,
    note: json['note'] as String,
    type: json['type'] as int,
  );
}

Map<String, dynamic> _$GroupsDataToJson(GroupsData instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'note': instance.note,
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
