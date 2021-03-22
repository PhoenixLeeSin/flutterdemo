import 'dart:async';
import 'dart:convert';
import 'package:flutter_strip/bean/travel/travel_params_model.dart';
import 'package:flutter_strip/util/network/httpUtil.dart';

//获取每个分类Tab下请求参数  包括公共参数params 和 groupChannelCode

const url = 'http://www.devio.org/io/flutter_app/json/travel_page.json';

class TravelParamsDao {
  static Future<TravelParamsModel> fetch() async {
    TravelParamsModel model;
    var response = await HttpUtil().get(url);
    Map map = jsonDecode(response.data.toString());
    model = TravelParamsModel.fromJson(map);
    return model;
  }
}
