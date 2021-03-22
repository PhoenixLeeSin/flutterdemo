import 'package:flutter/material.dart';
import 'package:flutter_strip/model/common_model.dart';
import 'package:flutter_strip/model/sales_box_model.dart';
import 'webview.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

///活动以及下方网格

class SalesBox extends StatelessWidget {
  final SalesBoxModel salesBoxModel;

  const SalesBox({Key key, @required this.salesBoxModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CommonModel> modelList = [];
    modelList.add(salesBoxModel.bigCard1);
    modelList.add(salesBoxModel.bigCard2);
    modelList.add(salesBoxModel.smallCard1);
    modelList.add(salesBoxModel.smallCard2);
    modelList.add(salesBoxModel.smallCard3);
    modelList.add(salesBoxModel.smallCard4);
    // return Container(
    //   child: _items(context),
    // );
    ScrollController _scrollController = ScrollController();
    return Column(
      children: <Widget>[
        _getActivity(context),
        StaggeredGridView.countBuilder(
            shrinkWrap: true,
            controller: _scrollController,
            crossAxisCount: 4,
            crossAxisSpacing: 2,
            mainAxisSpacing: 10,
            itemCount: 6,
            itemBuilder: (context, index) {
              return _item(context, modelList[index],
                  (index == 0 || index == 1) ?? false, index.isEven ?? false);
            },
            staggeredTileBuilder: (index) => StaggeredTile.fit(2))
        // staggeredTileBuilder: (index) => StaggeredTile.count(2, 1),
        // )
      ],
    );
  }

  Widget _getActivity(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.network(
            salesBoxModel.icon,
            height: 15,
            width: 79,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return WebView(
                    url: salesBoxModel.moreUrl,
                    title: '更多活动',
                  );
                },
              ));
            },
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xffff4e63),
                  Color(0xffff6cc9),
                ]),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                '获取更多福利 >',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }

  _item(BuildContext context, CommonModel model, bool big, bool left) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => WebView(
                      url: model.url,
                      title: model.title ?? '活动',
                    )));
      },
      child: Container(
        height: big ? 130 : 82,
        margin: left ? EdgeInsets.only(right: 4) : EdgeInsets.zero,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Image.network(
          model.icon,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
