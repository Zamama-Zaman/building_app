// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_tor_app/presentation/pages/agent_profile_page.dart';
import 'package:real_tor_app/presentation/pages/chat_history_page.dart';

import '../../constants.dart';
import '../../custom_icons_icons.dart';

class PropertySearchHome extends StatefulWidget {
  const PropertySearchHome({Key? key}) : super(key: key);

  @override
  State<PropertySearchHome> createState() => _PropertySearchHomeState();
}

class _PropertySearchHomeState extends State<PropertySearchHome> {
  final iconList = <IconData>[
    CustomIcons.home,
    CustomIcons.pinLocation,
    CustomIcons.favourite,
    CustomIcons.settings,
  ];
  List<Widget> get _pages => [ChatHistoryPage(), AgentProfilePage()];
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
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.kPrimaryColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Constant.kPrimaryColor,
        title: Text(
          "",
          style: TextStyle(
            color: Constant.kWhiteColor,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset("assets/images/arrow_back_icon.svg"),
        ),
        actions: [
          IconButton(
            onPressed: null,
            icon: SvgPicture.asset("assets/images/search_icon.svg"),
          ),
        ],
      ),
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
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Hello,",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 244,
                        width: 275,
                        color: Colors.grey.shade300,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rayna Rhiel Madsen",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Fill in some basic information, so can match \nyou with your perfect place",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFFAADBFF),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    color: Constant.kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      Text(
                        "I'm want to..",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 73,
                        width: double.infinity,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 73,
                              width: 78,
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Container(
                                    height: 52,
                                    width: 52,
                                    padding: const EdgeInsets.all(3.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFEAE3E),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Center(
                                        child: SvgPicture.asset(
                                          "assets/images/buy_property_icon.svg",
                                          width: 25,
                                          height: 25,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Buy Property",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 73,
                              width: 78,
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Container(
                                    height: 52,
                                    width: 52,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF6E8BFE),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                        "assets/images/sell_property_icon.svg",
                                        width: 25,
                                        height: 25,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Sell Property",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 73,
                              width: 78,
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Container(
                                    height: 52,
                                    width: 52,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFA6755),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                        "assets/images/rent_property_icon.svg",
                                        width: 25,
                                        height: 25,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Rent Property",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "I'm want to..",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Synergistically strategize wireless linkage after goal-oriented",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFFAAAAAA),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 51,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/location_pin_icon.svg",
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Noansa",
                              style: TextStyle(
                                color: Color(0xFFAAAAAA),
                              ),
                            ),
                            Spacer(),
                            Image.asset(
                              "assets/images/arrow_forward_image.png",
                              width: 25,
                              height: 25,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            height: 33.56,
                            width: 102.56,
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF3FA),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "California",
                                  style: TextStyle(
                                    color: Color(0xFF0986E2),
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.close,
                                  color: Color(0xFF0986E2),
                                  size: 16,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 33.56,
                            width: 102.56,
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF3FA),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Simi Valley",
                                  style: TextStyle(
                                    color: Color(0xFF0986E2),
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.close,
                                  color: Color(0xFF0986E2),
                                  size: 16,
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 32,
                            width: 60,
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Center(
                                  child: SvgPicture.asset(
                                    "assets/images/add_icon.svg",
                                    color: Color(0xFFAAAAAA),
                                    height: 12,
                                    width: 12,
                                  ),
                                ),
                                Text(
                                  "Add",
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xFFAAAAAA)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 90),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
