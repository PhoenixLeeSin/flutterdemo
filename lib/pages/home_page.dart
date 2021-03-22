import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_strip/dao/home_dao.dart';
import 'package:flutter_strip/model/common_model.dart';
import 'package:flutter_strip/model/grid_nav_model.dart';
import 'package:flutter_strip/model/home_model.dart';
import 'package:flutter_strip/model/sales_box_model.dart';
import 'package:flutter_strip/plugin/square_swiper_pagination.dart';
import 'package:flutter_strip/widget/grid_nav_new.dart';
import 'package:flutter_strip/widget/loading_container.dart';
import 'package:flutter_strip/widget/local_nav.dart';
import 'package:flutter_strip/widget/sales_box.dart';
import 'package:flutter_strip/widget/search_bar.dart';
import 'package:flutter_strip/widget/sub_nav.dart';
import 'package:flutter_strip/widget/webview.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

const APPBAR_SCROLL_OFFSET = 100;
const SEARCH_BAR_DEFAULT_TITLE = '目的地 | 酒店 | 景点 | 航班号';
const HOME_URL = 'https://cdn.lishaoy.net/ctrip/homeConfig.json';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double appBarAlpha = 0;
  List<CommonModel> localNavList = [];
  GridNavModel gridNavModel;
  List<CommonModel> subNavList = [];
  SalesBoxModel salesBoxModel;
  bool _isLoading = true;
  List<CommonModel> bannerList = [];

  @override
  void initState() {
    super.initState();
    _handleRefresh();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafc),
      body: LoadingContainer(
          child: Stack(
            children: <Widget>[
              MediaQuery.removePadding(
                  removeTop: true,
                  context: context,
                  child: NotificationListener(
                    onNotification: (scrollNotification) {
                      if (scrollNotification is ScrollUpdateNotification &&
                          scrollNotification.depth == 0) {
                        _onScroll(scrollNotification.metrics.pixels);
                      }
                      return true;
                    },
                    child: RefreshIndicator(
                      onRefresh: _handleRefresh,
                      child: ListView(
                        children: <Widget>[
                          Container(
                            height: 262,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  height: 210,
                                  child: Swiper(
                                    itemCount: bannerList.length,
                                    autoplay: true,
                                    pagination: SwiperPagination(
                                      builder: SquareSwiperPagination(
                                        size: 6,
                                        activeSize: 6,
                                        color: Colors.white.withAlpha(80),
                                        activeColor: Colors.blue,
                                      ),
                                      alignment: Alignment.bottomRight,
                                      margin: EdgeInsets.fromLTRB(0, 0, 14, 28),
                                    ),
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          CommonModel model = bannerList[index];
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                            builder: (context) {
                                              return WebView(
                                                url: model.url,
                                              );
                                            },
                                          ));
                                        },
                                        child: Image.network(
                                          bannerList[index].icon,
                                          fit: BoxFit.fill,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Positioned(
                                  top: 188,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding:
                                        EdgeInsets.only(left: 14, right: 14),
                                    child: LocalNav(
                                      localNavList: localNavList,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 14, right: 14),
                            margin: EdgeInsets.only(top: 10),
                            child: Column(
                              children: <Widget>[
                                GridNavNew(),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                SubNav(subNavList: subNavList),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                SalesBox(salesBoxModel: salesBoxModel),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              _appBar,
            ],
          ),
          isLoading: _isLoading),
    );
  }

  Widget get _appBar {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Color(0x66000000), Colors.transparent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: Container(
            padding: EdgeInsets.fromLTRB(14, 20, 0, 0),
            height: 86,
            decoration: BoxDecoration(
                color:
                    Color.fromARGB((appBarAlpha * 255).toInt(), 255, 255, 255),
                boxShadow: [
                  BoxShadow(
                    color: appBarAlpha == 1.0
                        ? Colors.black12
                        : Colors.transparent,
                    offset: Offset(2, 3),
                    blurRadius: 6,
                    spreadRadius: 0.6,
                  )
                ]),
            child: SearchBar(
              searchBarType: appBarAlpha > 0.2
                  ? SearchBarType.homeLight
                  : SearchBarType.home,
              inputBoxClick: _jumpToSearch,
              defaultText: SEARCH_BAR_DEFAULT_TITLE,
              leftButtonClick: () {},
              speakClick: _jumpToSpeak,
              rightButtonClick: _jumpToUser,
            ),
          ),
        ),
        Container(
          height: appBarAlpha > 0.2 ? 0.5 : 0,
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 0.5)]),
        )
      ],
    );
  }

  void _onScroll(offset) {
    double alpha = offset / APPBAR_SCROLL_OFFSET;
    if (alpha < 0) {
      alpha = 0;
    } else {
      alpha = 1;
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    }
    setState(() {
      appBarAlpha = alpha;
    });
    print(alpha);
  }

  Future<Null> _handleRefresh() async {
    HomeModel model;
    try {
      HomeDao.fetch().then((HomeModel data) {
        model = data;
        setState(() {
          localNavList = model.localNavList;
          gridNavModel = model.gridNav;
          subNavList = model.subNavList;
          salesBoxModel = model.salesBox;
          bannerList = model.bannerList;
          _isLoading = false;
        });
      });
    } catch (e) {
      setState(() {
        print(e);
        _isLoading = false;
      });
    }
    return null;
  }

  void _jumpToSearch() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => null));
  }

  _jumpToSpeak() {}

  void _jumpToUser() {}
}
