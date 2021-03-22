import 'package:json_annotation/json_annotation.dart';
part 'destination_model.g.dart';

@JsonSerializable(explicitToJson: true)
class DestinationModel {
  List<NavigationpoplistData> navigationPopList;

  DestinationModel({
    this.navigationPopList,
  });

  factory DestinationModel.fromJson(Map<String, dynamic> json) =>
      _$DestinationModelFromJson(json);
  Map<String, dynamic> toJson() => _$DestinationModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NavigationpoplistData {
  int category;
  String categoryName;
  List<DestarealistData> destAreaList;

  NavigationpoplistData({
    this.category,
    this.categoryName,
    this.destAreaList,
  });

  factory NavigationpoplistData.fromJson(Map<String, dynamic> json) =>
      _$NavigationpoplistDataFromJson(json);
  Map<String, dynamic> toJson() => _$NavigationpoplistDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DestarealistData {
  List<ChildData> child;
  int id;
  String text;

  DestarealistData({
    this.child,
    this.id,
    this.text,
  });

  factory DestarealistData.fromJson(Map<String, dynamic> json) =>
      _$DestarealistDataFromJson(json);
  Map<String, dynamic> toJson() => _$DestarealistDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChildData {
  int id;
  String kwd;
  String picUrl;
  String poiType;
  List<TaglistData> tagList;
  String text;

  ChildData({
    this.id,
    this.kwd,
    this.picUrl,
    this.poiType,
    this.tagList,
    this.text,
  });

  factory ChildData.fromJson(Map<String, dynamic> json) =>
      _$ChildDataFromJson(json);
  Map<String, dynamic> toJson() => _$ChildDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TaglistData {
  String tagName;
  int type;

  TaglistData({
    this.tagName,
    this.type,
  });

  factory TaglistData.fromJson(Map<String, dynamic> json) =>
      _$TaglistDataFromJson(json);
  Map<String, dynamic> toJson() => _$TaglistDataToJson(this);
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
