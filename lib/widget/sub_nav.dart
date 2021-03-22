import 'package:flutter/material.dart';
import 'package:flutter_strip/model/common_model.dart';
import 'package:flutter_strip/widget/webview.dart';

///网格图下方的菜单栏

class SubNav extends StatelessWidget {
  final List<CommonModel> subNavList;
  const SubNav({Key key, @required this.subNavList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width - 28,
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
        child: GridView.count(
          mainAxisSpacing: 10,
          addAutomaticKeepAlives: true,
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          children: _getItems(context),
        ));
  }

  List<Widget> _getItems(BuildContext context) {
    List<Widget> list = [];
    subNavList.forEach((model) {
      list.add(Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return WebView(
                  url: model.url,
                  statusBarColor: model.statusBarColor,
                  hideAppBar: model.hideAppBar,
                );
              },
            ));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.network(
                model.icon,
                width: 28,
                height: 28,
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                model.title,
                style: TextStyle(
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
      ));
    });
    return list;
  }
}
