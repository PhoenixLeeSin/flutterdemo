import 'dart:async';
import 'dart:convert';

import 'package:flutter_strip/model/home_model.dart';
import 'package:flutter_strip/util/network/httpUtil.dart';

const HOME_URL = 'https://cdn.lishaoy.net/ctrip/homeConfig.json';

class HomeDao {
  static Future<HomeModel> fetch() async {
    HomeModel model;
    var response = await HttpUtil().get(HOME_URL);
    Map map = json.decode(response.data.toString());
    model = HomeModel.fromJson(map);
    return model;
  }
}
