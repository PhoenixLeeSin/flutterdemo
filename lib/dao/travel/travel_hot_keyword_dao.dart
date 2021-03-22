import 'dart:async';
import 'dart:convert';
import 'package:flutter_strip/bean/travel/travel_hot_keyword_model.dart';
import 'package:flutter_strip/util/network/httpUtil.dart';

var params = {
  "head": {
    "cid": "09031043410934928682",
    "ctok": "",
    "cver": "1.0",
    "lang": "01",
    "sid": "8888",
    "syscode": "09",
    "auth": null,
    "extension": [
      {"name": "tecode", "value": "h5"},
      {"name": "protocal", "value": "https"}
    ]
  },
  "contentType": "json"
};
var url =
    'https://m.ctrip.com/restapi/soa2/16189/json/searchRecommend?_fxpcqlniredt=09031043410934928682&__gw_appid=99999999&__gw_ver=1.0&__gw_from=10650016495&__gw_platform=H5';

//获取热搜词的集合

class TravelHotKeywordDao {
  static Future<TravelHotKeywordModel> fetch() async {
    TravelHotKeywordModel model;
    final response = await HttpUtil().get(url, data: params);
    Map map = jsonDecode(response.data.toString());
    model = TravelHotKeywordModel.fromJson(map);
    return model;
  }
}
