import 'package:json_annotation/json_annotation.dart';
part 'travel_hot_keyword_model.g.dart';

@JsonSerializable(explicitToJson: true)
class TravelHotKeywordModel {
  ResponsestatusData ResponseStatus;
  List<ResultData> result;

  TravelHotKeywordModel({
    this.ResponseStatus,
    this.result,
  });

  factory TravelHotKeywordModel.fromJson(Map<String, dynamic> json) =>
      _$TravelHotKeywordModelFromJson(json);
  Map<String, dynamic> toJson() => _$TravelHotKeywordModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResultData {
  String prefix;
  String content;
  String h5Url;
  String appUrl;
  String wxUrl;
  String mainWxUrl;

  ResultData({
    this.prefix,
    this.content,
    this.h5Url,
    this.appUrl,
    this.wxUrl,
    this.mainWxUrl,
  });

  factory ResultData.fromJson(Map<String, dynamic> json) =>
      _$ResultDataFromJson(json);
  Map<String, dynamic> toJson() => _$ResultDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResponsestatusData {
  String Timestamp;
  String Ack;
  List<dynamic> Errors;
  List<ExtensionData> Extension;

  ResponsestatusData({
    this.Timestamp,
    this.Ack,
    this.Errors,
    this.Extension,
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
