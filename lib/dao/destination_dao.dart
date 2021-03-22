import 'dart:async';
import 'dart:convert';
import 'package:flutter_strip/bean/destination_model.dart';
import 'package:flutter_strip/util/network/httpUtil.dart';

var params = {
  "head": {
    "cid": "09031043410934928682",
    "ctok": "",
    "cver": "1.0",
    "lang": "01",
    "sid": "8888",
    "syscode": "09",
    "auth": "",
    "extension": []
  },
  "channel": "H5",
  "businessUnit": 14,
  "startCity": 2,
};
var url =
    'https://sec-m.ctrip.com/restapi/soa2/14422/navigationInfo?_fxpcqlniredt=09031043410934928682';

class DestinationDao {
  static Future<DestinationModel> fetch() async {
    DestinationModel model;
    var response = await HttpUtil().get(url, data: params);
    Map map = json.decode(response.data.toString());
    model = DestinationModel.fromJson(map);
    return model;
  }
}
// options: Options(headers: {Headers.contentLengthHeader:})
