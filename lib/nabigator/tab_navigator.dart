import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_strip/pages/home_page.dart';
import 'package:flutter_strip/pages/destination_page.dart';
import 'package:flutter_strip/pages/travel_page.dart';
import 'package:flutter_strip/pages/my_page.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator>
    with AutomaticKeepAliveClientMixin, SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(
      initialPage: 0,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  List<String> titles = ['首页', '目的地', '旅拍', '我的'];
  List<String> inactiveIcons = [
    'images/xiecheng.png',
    'images/mude.png',
    'images/lvpai.png',
    'images/wode.png'
  ];
  List<String> activeIcons = [
    'images/xiecheng_active.png',
    'images/mude_active.png',
    'images/lvpai_active.png',
    'images/wode_active.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          HomePage(),
          DestinationPage(),
          TravelPage(),
          MyPage(),
        ],
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            _controller.animateToPage(index,
                duration: Duration(milliseconds: 260), curve: Curves.easeIn);
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          items: _items()),
    );
  }

  List<BottomNavigationBarItem> _items() {
    List<BottomNavigationBarItem> list = [];
    for (var i = 0; i < 4; i++) {
      BottomNavigationBarItem item = _getBottomNavigationBarItem(
          inactiveIcons[i], activeIcons[i], titles[i]);
      list.add(item);
    }
    return list;
  }

  BottomNavigationBarItem _getBottomNavigationBarItem(
      String icon, String activeIcon, String text) {
    return BottomNavigationBarItem(
        icon: Image.asset(
          icon,
          width: 22,
          height: 22,
        ),
        activeIcon: Image.asset(
          activeIcon,
          width: 22,
          height: 22,
        ),
        label: text);
  }

  @override
  bool get wantKeepAlive => true;
}
