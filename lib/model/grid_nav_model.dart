import 'package:flutter_strip/model/common_model.dart';

//首页网格卡片模型
class GridNavModel {
  final GridNavItem hotel;
  final GridNavItem flight;
  final GridNavItem travel;
  GridNavModel({this.hotel, this.flight, this.travel});

  factory GridNavModel.fromJson(Map<String, dynamic> json) {
    return json != null
        ? GridNavModel(
            hotel: GridNavItem.fromJson(json['hotel']),
            flight: GridNavItem.fromJson(json['flight']),
            travel: GridNavItem.fromJson(json['travel']))
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['hotel'] = this.hotel.toJson();
    data['flight'] = this.flight.toJson();
    data['travel'] = this.travel.toJson();
    return data;
  }
}

class GridNavItem {
  final String startColor;
  final String endColor;
  final CommonModel item1;
  final CommonModel item2;
  final CommonModel item3;
  final CommonModel item4;
  final CommonModel mainItem;

  GridNavItem(
      {this.startColor,
      this.endColor,
      this.item1,
      this.item2,
      this.item3,
      this.item4,
      this.mainItem});
  factory GridNavItem.fromJson(Map<String, dynamic> json) {
    return GridNavItem(
        startColor: json['startColor'],
        endColor: json['endColor'],
        item1: CommonModel.fromJson(json['item1']),
        item2: CommonModel.fromJson(json['item2']),
        item3: CommonModel.fromJson(json['item3']),
        item4: CommonModel.fromJson(json['item4']),
        mainItem: CommonModel.fromJson(json['mainItem']));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['startColor'] = this.startColor;
    data['endColor'] = this.endColor;
    data['item1'] = this.item1.toJson();
    data['item2'] = this.item2.toJson();
    data['item3'] = this.item3.toJson();
    data['item4'] = this.item4.toJson();
    data['mainItem'] = this.mainItem.toJson();
    return data;
  }
}
