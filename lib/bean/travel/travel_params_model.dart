import 'package:json_annotation/json_annotation.dart';
part 'travel_params_model.g.dart';

@JsonSerializable(explicitToJson: true)
class TravelParamsModel {
  String url;
  Map params;
  List<TabsData> tabs;

  TravelParamsModel({
    this.url,
    this.params,
    this.tabs,
  });

  factory TravelParamsModel.fromJson(Map<String, dynamic> json) =>
      _$TravelParamsModelFromJson(json);
  Map<String, dynamic> toJson() => _$TravelParamsModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TabsData {
  String labelName;
  String groupChannelCode;

  TabsData({
    this.labelName,
    this.groupChannelCode,
  });

  factory TabsData.fromJson(Map<String, dynamic> json) =>
      _$TabsDataFromJson(json);
  Map<String, dynamic> toJson() => _$TabsDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ParamsData {
  int districtId;
  String groupChannelCode;
  var type;
  int lat;
  int lon;
  int locatedDistrictId;
  PageparaData pagePara;
  int imageCutType;
  HeadData head;
  String contentType;

  ParamsData({
    this.districtId,
    this.groupChannelCode,
    this.type,
    this.lat,
    this.lon,
    this.locatedDistrictId,
    this.pagePara,
    this.imageCutType,
    this.head,
    this.contentType,
  });

  factory ParamsData.fromJson(Map<String, dynamic> json) =>
      _$ParamsDataFromJson(json);
  Map<String, dynamic> toJson() => _$ParamsDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HeadData {
  String cid;
  String ctok;
  String cver;
  String lang;
  String sid;
  String syscode;
  var auth;
  List<ExtensionData> extension;

  HeadData({
    this.cid,
    this.ctok,
    this.cver,
    this.lang,
    this.sid,
    this.syscode,
    this.auth,
    this.extension,
  });

  factory HeadData.fromJson(Map<String, dynamic> json) =>
      _$HeadDataFromJson(json);
  Map<String, dynamic> toJson() => _$HeadDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExtensionData {
  String name;
  String value;

  ExtensionData({
    this.name,
    this.value,
  });

  factory ExtensionData.fromJson(Map<String, dynamic> json) =>
      _$ExtensionDataFromJson(json);
  Map<String, dynamic> toJson() => _$ExtensionDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PageparaData {
  int pageIndex;
  int pageSize;
  int sortType;
  int sortDirection;

  PageparaData({
    this.pageIndex,
    this.pageSize,
    this.sortType,
    this.sortDirection,
  });

  factory PageparaData.fromJson(Map<String, dynamic> json) =>
      _$PageparaDataFromJson(json);
  Map<String, dynamic> toJson() => _$PageparaDataToJson(this);
}
