import 'package:flutter/material.dart';
import 'package:flutter_strip/bean/travel/travel_hot_keyword_model.dart';
import 'package:flutter_strip/bean/travel/travel_tab_model.dart';
import 'package:flutter_strip/bean/travel/travel_params_model.dart';
import 'package:flutter_strip/dao/travel/travel_hot_keyword_dao.dart';
import 'package:flutter_strip/dao/travel/travel_params_dao.dart';
import 'package:flutter_strip/dao/travel/travel_tab_dao.dart';
import 'package:flutter_strip/widget/search_bar.dart';
import 'package:flutter_strip/pages/travel_tab_page.dart';

class TravelPage extends StatefulWidget {
  @override
  _TravelPageState createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> with TickerProviderStateMixin {
  TabController _controller;
  List<GroupsData> tabs = [];
  TravelTabModel travelTabModel;
  TravelParamsModel travelParamsModel;
  TravelHotKeywordModel travelHotKeywordModel;
  List<ResultData> hotKeyWords;
  String defaultText = '试试搜\"花式过五一"';

  @override
  void initState() {
    _controller = TabController(length: 0, vsync: this);
    _loadParams();
    _loadHotKeyword();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(8, 8, 6, 0),
            decoration: BoxDecoration(color: Colors.white),
            child: SafeArea(
              child: SearchBar(
                searchBarType: SearchBarType.homeLight,
                inputBoxClick: () {},
                defaultText: defaultText,
                speakClick: () {},
                hintList: hotKeyWords,
                isUserIcon: true,
                rightButtonClick: () {},
              ),
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 2),
            child: TabBar(
              controller: _controller,
              isScrollable: true,
              labelColor: Colors.red,
              labelPadding: EdgeInsets.fromLTRB(8, 6, 8, 0),
              indicatorColor: Color(0xff2FCFBB),
              indicatorPadding: EdgeInsets.all(6),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 3.2,
              labelStyle: TextStyle(fontSize: 18),
              unselectedLabelStyle: TextStyle(fontSize: 15),
              tabs: tabs.map<Tab>((GroupsData tab) {
                return Tab(
                  text: tab.name,
                );
              }).toList(),
            ),
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.fromLTRB(6, 3, 6, 0),
              child: TabBarView(
                controller: _controller,
                children: tabs.map((GroupsData tab) {
                  return TravelTabPage(
                    travelUrl: travelParamsModel?.url,
                    params: travelParamsModel?.params,
                    groupChannelCode: tab?.code,
                  );
                }).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }

  //获取类别
  void _loadParams() {
    TravelParamsDao.fetch().then((TravelParamsModel model) {
      setState(() {
        travelParamsModel = model;
      });
      _loadTab();
    });
  }

  //获取tab类别 eg:推荐/春日踏青记/赏花指南/直播好货推荐.....
  void _loadTab() {
    TravelTabDao.fetch().then((TravelTabModel model) {
      _controller =
          TabController(length: model.district.groups.length, vsync: this);
      setState(() {
        tabs = model.district.groups;
        travelTabModel = model;
      });
    });
  }

  //获取热搜关键词
  void _loadHotKeyword() {
    TravelHotKeywordDao.fetch().then((TravelHotKeywordModel model) {
      setState(() {
        travelHotKeywordModel = model;
        hotKeyWords = travelHotKeywordModel.result;
      });
    });
  }
}
