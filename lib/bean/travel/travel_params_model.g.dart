// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_params_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravelParamsModel _$TravelParamsModelFromJson(Map<String, dynamic> json) {
  return TravelParamsModel(
    url: json['url'] as String,
    params: json['params'] as Map<String, dynamic>,
    tabs: (json['tabs'] as List)
        ?.map((e) =>
            e == null ? null : TabsData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TravelParamsModelToJson(TravelParamsModel instance) =>
    <String, dynamic>{
      'url': instance.url,
      'params': instance.params,
      'tabs': instance.tabs?.map((e) => e?.toJson())?.toList(),
    };

TabsData _$TabsDataFromJson(Map<String, dynamic> json) {
  return TabsData(
    labelName: json['labelName'] as String,
    groupChannelCode: json['groupChannelCode'] as String,
  );
}

Map<String, dynamic> _$TabsDataToJson(TabsData instance) => <String, dynamic>{
      'labelName': instance.labelName,
      'groupChannelCode': instance.groupChannelCode,
    };

ParamsData _$ParamsDataFromJson(Map<String, dynamic> json) {
  return ParamsData(
    districtId: json['districtId'] as int,
    groupChannelCode: json['groupChannelCode'] as String,
    type: json['type'],
    lat: json['lat'] as int,
    lon: json['lon'] as int,
    locatedDistrictId: json['locatedDistrictId'] as int,
    pagePara: json['pagePara'] == null
        ? null
        : PageparaData.fromJson(json['pagePara'] as Map<String, dynamic>),
    imageCutType: json['imageCutType'] as int,
    head: json['head'] == null
        ? null
        : HeadData.fromJson(json['head'] as Map<String, dynamic>),
    contentType: json['contentType'] as String,
  );
}

Map<String, dynamic> _$ParamsDataToJson(ParamsData instance) =>
    <String, dynamic>{
      'districtId': instance.districtId,
      'groupChannelCode': instance.groupChannelCode,
      'type': instance.type,
      'lat': instance.lat,
      'lon': instance.lon,
      'locatedDistrictId': instance.locatedDistrictId,
      'pagePara': instance.pagePara?.toJson(),
      'imageCutType': instance.imageCutType,
      'head': instance.head?.toJson(),
      'contentType': instance.contentType,
    };

HeadData _$HeadDataFromJson(Map<String, dynamic> json) {
  return HeadData(
    cid: json['cid'] as String,
    ctok: json['ctok'] as String,
    cver: json['cver'] as String,
    lang: json['lang'] as String,
    sid: json['sid'] as String,
    syscode: json['syscode'] as String,
    auth: json['auth'],
    extension: (json['extension'] as List)
        ?.map((e) => e == null
            ? null
            : ExtensionData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$HeadDataToJson(HeadData instance) => <String, dynamic>{
      'cid': instance.cid,
      'ctok': instance.ctok,
      'cver': instance.cver,
      'lang': instance.lang,
      'sid': instance.sid,
      'syscode': instance.syscode,
      'auth': instance.auth,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
    };

ExtensionData _$ExtensionDataFromJson(Map<String, dynamic> json) {
  return ExtensionData(
    name: json['name'] as String,
    value: json['value'] as String,
  );
}

Map<String, dynamic> _$ExtensionDataToJson(ExtensionData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

PageparaData _$PageparaDataFromJson(Map<String, dynamic> json) {
  return PageparaData(
    pageIndex: json['pageIndex'] as int,
    pageSize: json['pageSize'] as int,
    sortType: json['sortType'] as int,
    sortDirection: json['sortDirection'] as int,
  );
}

Map<String, dynamic> _$PageparaDataToJson(PageparaData instance) =>
    <String, dynamic>{
      'pageIndex': instance.pageIndex,
      'pageSize': instance.pageSize,
      'sortType': instance.sortType,
      'sortDirection': instance.sortDirection,
    };
