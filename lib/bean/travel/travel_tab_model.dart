import 'package:json_annotation/json_annotation.dart';
part 'travel_tab_model.g.dart';

@JsonSerializable(explicitToJson: true)
class TravelTabModel {
  ResponsestatusData ResponseStatus;
  String abTestResult;
  String currentTime;
  DistrictData district;
  List<SubjectmodulesData> subjectModules;

  TravelTabModel({
    this.ResponseStatus,
    this.abTestResult,
    this.currentTime,
    this.district,
    this.subjectModules,
  });

  factory TravelTabModel.fromJson(Map<String, dynamic> json) =>
      _$TravelTabModelFromJson(json);
  Map<String, dynamic> toJson() => _$TravelTabModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubjectmodulesData {
  int moduleType;
  SubjectoperationthemeitemdtoData subjectOperationThemeItemDto;
  int virtualType;

  SubjectmodulesData({
    this.moduleType,
    this.subjectOperationThemeItemDto,
    this.virtualType,
  });

  factory SubjectmodulesData.fromJson(Map<String, dynamic> json) =>
      _$SubjectmodulesDataFromJson(json);
  Map<String, dynamic> toJson() => _$SubjectmodulesDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubjectoperationthemeitemdtoData {
  String moreTextForApp;
  String moreTextForH5;
  String moreTextForMainWx;
  String moreTextForWx;
  int styleType;
  List<dynamic> themes;
  String title;

  SubjectoperationthemeitemdtoData({
    this.moreTextForApp,
    this.moreTextForH5,
    this.moreTextForMainWx,
    this.moreTextForWx,
    this.styleType,
    this.themes,
    this.title,
  });

  factory SubjectoperationthemeitemdtoData.fromJson(
          Map<String, dynamic> json) =>
      _$SubjectoperationthemeitemdtoDataFromJson(json);
  Map<String, dynamic> toJson() =>
      _$SubjectoperationthemeitemdtoDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DistrictData {
  int districtId;
  String districtName;
  List<GroupsData> groups;

  DistrictData({
    this.districtId,
    this.districtName,
    this.groups,
  });

  factory DistrictData.fromJson(Map<String, dynamic> json) =>
      _$DistrictDataFromJson(json);
  Map<String, dynamic> toJson() => _$DistrictDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GroupsData {
  String code;
  String name;
  String note;
  int type;

  GroupsData({
    this.code,
    this.name,
    this.note,
    this.type,
  });

  factory GroupsData.fromJson(Map<String, dynamic> json) =>
      _$GroupsDataFromJson(json);
  Map<String, dynamic> toJson() => _$GroupsDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResponsestatusData {
  String Ack;
  List<dynamic> Errors;
  List<ExtensionData> Extension;
  String Timestamp;

  ResponsestatusData({
    this.Ack,
    this.Errors,
    this.Extension,
    this.Timestamp,
  });

  factory ResponsestatusData.fromJson(Map<String, dynamic> json) =>
      _$ResponsestatusDataFromJson(json);
  Map<String, dynamic> toJson() => _$ResponsestatusDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExtensionData {
  String Id;
  String Value;

  ExtensionData({
    this.Id,
    this.Value,
  });

  factory ExtensionData.fromJson(Map<String, dynamic> json) =>
      _$ExtensionDataFromJson(json);
  Map<String, dynamic> toJson() => _$ExtensionDataToJson(this);
}
