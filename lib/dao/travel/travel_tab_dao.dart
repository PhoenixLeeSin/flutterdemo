import 'dart:async';
import 'dart:convert';
import 'package:flutter_strip/bean/travel/travel_tab_model.dart';
import 'package:flutter_strip/util/network/httpUtil.dart';

const url = 'https://m.ctrip.com/restapi/soa2/15612/json/getTripShootHomePage';

////获取tab类别 eg:推荐/春日踏青记/赏花指南/直播好货推荐.....
class TravelTabDao {
  static Future<TravelTabModel> fetch() async {
    TravelTabModel model;
    final response = await HttpUtil().get(url);
    Map map = json.decode(response.data.toString());
    model = TravelTabModel.fromJson(map);
    return model;
  }
}
