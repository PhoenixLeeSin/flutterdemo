import 'dart:async';
import 'dart:convert';
import 'package:flutter_strip/bean/travel/travel_model.dart';
import 'package:flutter_strip/util/network/httpUtil.dart';

//每个Tab页内详细的内容
class TravelDao {
  static Future<TravelModel> fetch(String url, Map params,
      String groupChannelCode, int pageIndex, int pageSize) async {
    Map paramsMap = params['pagePara'];
    paramsMap['pageIndex'] = pageIndex;
    paramsMap['pageSize'] = pageSize;
    params['groupChannelCode'] = groupChannelCode;

    TravelModel model;
    final response = await HttpUtil().get(url, data: params);
    Map map = jsonDecode(response.data.toString());
    model = TravelModel.fromJson(map);
    return model;
  }
}
