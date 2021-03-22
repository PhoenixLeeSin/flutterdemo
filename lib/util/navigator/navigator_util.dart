import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavigatorUtil {
  //跳转到指定页面
  static push(BuildContext context, Widget page, {Function callBack}) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page))
        .then((value) {
      ///获取返回值处理
      callBack != null ? callBack() : print('not find callback');
    });
  }
}
