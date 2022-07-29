// ignore_for_file: prefer_const_constructors

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_tor_app/presentation/pages/agent_profile_page.dart';
import 'package:real_tor_app/presentation/pages/chat_history_page.dart';
import 'package:real_tor_app/presentation/pages/home_page.dart';
import 'package:real_tor_app/presentation/pages/property_search_filter_page.dart';
import 'package:real_tor_app/presentation/pages/property_search_home.dart';

import '../../constants.dart';
import '../../custom_icons_icons.dart';
import '../../size_config.dart';

class DefaultPage extends StatefulWidget {
  const DefaultPage({Key? key}) : super(key: key);

  @override
  State<DefaultPage> createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  final iconList = <IconData>[
    CustomIcons.home,
    CustomIcons.pinLocation,
    CustomIcons.favourite,
    CustomIcons.settings,
  ];

  List<Widget> get _pages => [
        HomePage(),
        PropertySearchHome(),
        PropertySearchFilterPage(),
        AgentProfilePage(),
      ];

  int _pageNavIndex = 0;

  Widget _bottomNavBar() {
    return AnimatedBottomNavigationBar(
      activeColor: Colors.blue,
      backgroundColor: Color(0xFFEAF3FA),
      gapLocation: GapLocation.center,
      icons: iconList,
      iconSize: 20,
      activeIndex: _pageNavIndex,
      onTap: (index) {
        setState(() {
          _pageNavIndex = index;
          // print(index);
        });
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _bottomNavBar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 8,
        backgroundColor: Colors.white,
        child: Container(
          height: 50,
          width: 50,
          margin: EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: Constant.kPrimaryButtonColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(
            Icons.add,
            size: 30,
          ),
        ),
        onPressed: () {},
        //   //params
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: _bottomNavBar(),
      backgroundColor: Constant.kBackgroundColor,
      body: _pages[_pageNavIndex],
    );
  }
}
