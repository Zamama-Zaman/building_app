// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_tor_app/custom_icons_icons.dart';
import 'package:real_tor_app/presentation/pages/agent_profile_page.dart';
import 'package:real_tor_app/presentation/pages/chat_history_page.dart';

import '../../constants.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
          "Notification",
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
              children: [
                SizedBox(
                  height: 50,
                  width: double.infinity,
                ),
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
                    children: [
                      SizedBox(height: 20),
                      Container(
                        height: 123,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 37,
                                  width: 37,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Appropriately size future-",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF979797),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "Now",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF979797),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 7),
                            Text(
                              "Appropriately size future-",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Quickly leverage other's long-term high-impact information for market-driven models. Competently morph ",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF484D61),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 123,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 37,
                                  width: 37,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Appropriately size future-",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF979797),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "Now",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF979797),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 7),
                            Text(
                              "Appropriately size future-",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Quickly leverage other's long-term high-impact information for market-driven models. Competently morph ",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF484D61),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 123,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 37,
                                  width: 37,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Appropriately size future-",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF979797),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "Now",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF979797),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 7),
                            Text(
                              "Appropriately size future-",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Quickly leverage other's long-term high-impact information for market-driven models. Competently morph ",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF484D61),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 123,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 37,
                                  width: 37,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Appropriately size future-",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF979797),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "Now",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF979797),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 7),
                            Text(
                              "Appropriately size future-",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Quickly leverage other's long-term high-impact information for market-driven models. Competently morph ",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF484D61),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 123,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 37,
                                  width: 37,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Appropriately size future-",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF979797),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "Now",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF979797),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 7),
                            Text(
                              "Appropriately size future-",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Quickly leverage other's long-term high-impact information for market-driven models. Competently morph ",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF484D61),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
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
