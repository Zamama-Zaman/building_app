// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_tor_app/custom_icons_icons.dart';
import 'package:real_tor_app/presentation/pages/agent_profile_page.dart';
import 'package:real_tor_app/presentation/pages/chat_history_page.dart';
import 'package:real_tor_app/presentation/pages/loan_bank_details_page.dart';
import 'package:real_tor_app/presentation/pages/loan_calculator_page_two.dart';
import 'package:real_tor_app/presentation/pages/property_inside_page.dart';
import 'package:real_tor_app/presentation/pages/property_listing_page.dart';
import 'package:real_tor_app/presentation/pages/property_search_filter_page.dart';
import 'package:real_tor_app/size_config.dart';

import '../../constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final iconList = <IconData>[
  //   CustomIcons.home,
  //   CustomIcons.pinLocation,
  //   CustomIcons.favourite,
  //   CustomIcons.settings,
  // ];
  // List<Widget> get _pages => [ChatHistoryPage(), AgentProfilePage()];
  // int _pageNavIndex = 0;
  // Widget _bottomNavBar() {
  //   return AnimatedBottomNavigationBar(
  //     activeColor: Colors.blue,
  //     backgroundColor: Color(0xFFEAF3FA),
  //     gapLocation: GapLocation.center,
  //     icons: iconList,
  //     iconSize: 20,
  //     activeIndex: _pageNavIndex,
  //     onTap: (index) {
  //       setState(() {
  //         _pageNavIndex = index;
  //       });
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, getProportionateScreenHeight(60)),
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10)),
            height: getProportionateScreenHeight(60),
            color: Colors.transparent,
            child: Row(
              children: [
                Text(
                  "Davis Korsgaard",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF484D61),
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(10)),
                SvgPicture.asset("assets/images/location_pin_icon.svg"),
                SizedBox(width: getProportionateScreenWidth(5)),
                Text(
                  "Noansa".toUpperCase(),
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(14),
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF4E74FF),
                  ),
                ),
                Spacer(),
                SvgPicture.asset(
                  "assets/images/search_icon.svg",
                  color: Color(0xFF323232),
                ),
                SizedBox(width: getProportionateScreenWidth(10)),
                Stack(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        width: 10,
                        height: 10,
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: getProportionateScreenHeight(163),
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(10),
                        vertical: getProportionateScreenHeight(20),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF6273FF),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: getProportionateScreenWidth(10)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Continually integrate",
                                style: TextStyle(
                                  fontSize: getProportionateScreenWidth(18),
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                              SizedBox(
                                  height: getProportionateScreenHeight(10)),
                              Text(
                                "Seamlessly transform high-quality \napplications via team building vortals.",
                                style: TextStyle(
                                  fontSize: getProportionateScreenWidth(10),
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                              SizedBox(
                                  height: getProportionateScreenHeight(20)),
                              Container(
                                height: getProportionateScreenHeight(32),
                                width: getProportionateScreenWidth(125),
                                decoration: BoxDecoration(
                                  color: Color(0xFFFEA935),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Post a Property',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: getProportionateScreenWidth(12),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: getProportionateScreenWidth(5)),
                          Container(
                            height: getProportionateScreenHeight(122),
                            width: getProportionateScreenWidth(131),
                            color: Colors.white.withOpacity(.3),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(30)),
                    Text(
                      "Dramatically actualize value",
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(30)),
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
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            PropertyListingPage(),
                                      ),
                                    );
                                  },
                                  child: Container(
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
                    SizedBox(height: getProportionateScreenHeight(20)),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PropertySearchFilterPage(),
                          ),
                        );
                      },
                      child: Container(
                        height: getProportionateScreenHeight(55),
                        width: getProportionateScreenWidth(297),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Color(0xFF0986E2),
                            width: 1,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Cuztomise your property",
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: getProportionateScreenWidth(16),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    Container(
                      height: getProportionateScreenHeight(30),
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Verified Property",
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: getProportionateScreenWidth(17),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PropertyListingPage(),
                                ),
                              );
                            },
                            child: Image.asset(
                              "assets/images/arrow_forward_image.png",
                              width: 17,
                              height: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PropertyInsidePage(),
                              ),
                            );
                          },
                          child: Container(
                            height: getProportionateScreenHeight(300),
                            width: getProportionateScreenWidth(162),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: getProportionateScreenHeight(145),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    Container(
                                      height: getProportionateScreenHeight(128),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFC4C4C4),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      right: 5,
                                      child: Container(
                                        height:
                                            getProportionateScreenHeight(27),
                                        width: getProportionateScreenWidth(55),
                                        decoration: BoxDecoration(
                                          color: Color(0xFF6E8BFE),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            bottomLeft: Radius.circular(5),
                                            bottomRight: Radius.circular(5),
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Owner",
                                          style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                            fontSize:
                                                getProportionateScreenWidth(14),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      left: 5,
                                      child: Container(
                                        width: 34,
                                        height: 34,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF979797),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(10)),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$ 4460.00",
                                      style: TextStyle(
                                        color: Color(0xFF0986E2),
                                        fontSize:
                                            getProportionateScreenWidth(17),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Image.asset(
                                      "assets/images/call_image.png",
                                      height: 18,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(5)),
                                Text(
                                  "Santi Nivas",
                                  style: TextStyle(
                                    color: Color(0xFF382D26),
                                    fontSize: getProportionateScreenWidth(16),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(5)),
                                Text(
                                  "DN Block, Sector 5, Salt \nLake, Kolkata",
                                  style: TextStyle(
                                    color: Color(0xFF889399),
                                    fontSize: getProportionateScreenWidth(11),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(10)),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Image.asset(
                                      "assets/images/bed_room_image.png",
                                      width: getProportionateScreenWidth(15),
                                      height: getProportionateScreenHeight(15),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(5)),
                                    Text(
                                      "04",
                                      style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(10),
                                      ),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(5)),
                                    Image.asset(
                                      "assets/images/bath_room_image.png",
                                      width: getProportionateScreenWidth(15),
                                      height: getProportionateScreenHeight(15),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(5)),
                                    Text(
                                      "05",
                                      style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(10),
                                      ),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(5)),
                                    Image.asset(
                                      "assets/images/sq_foot_image.png",
                                      width: getProportionateScreenWidth(15),
                                      height: getProportionateScreenHeight(15),
                                    ),
                                    SizedBox(
                                      width: getProportionateScreenWidth(2),
                                    ),
                                    Text(
                                      "2100 Sq/m",
                                      style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(10),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: getProportionateScreenWidth(10)),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PropertyInsidePage(),
                              ),
                            );
                          },
                          child: Container(
                            height: getProportionateScreenHeight(300),
                            width: getProportionateScreenWidth(162),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: getProportionateScreenHeight(145),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    Container(
                                      height: getProportionateScreenHeight(128),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFC4C4C4),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      right: 5,
                                      child: Container(
                                        height:
                                            getProportionateScreenHeight(27),
                                        width: getProportionateScreenWidth(55),
                                        decoration: BoxDecoration(
                                          color: Color(0xFF6E8BFE),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            bottomLeft: Radius.circular(5),
                                            bottomRight: Radius.circular(5),
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Owner",
                                          style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                            fontSize:
                                                getProportionateScreenWidth(14),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      left: 5,
                                      child: Container(
                                        width: 34,
                                        height: 34,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF979797),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(10)),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$ 4460.00",
                                      style: TextStyle(
                                        color: Color(0xFF0986E2),
                                        fontSize:
                                            getProportionateScreenWidth(17),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Image.asset(
                                      "assets/images/call_image.png",
                                      height: 18,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(5)),
                                Text(
                                  "Santi Nivas",
                                  style: TextStyle(
                                    color: Color(0xFF382D26),
                                    fontSize: getProportionateScreenWidth(16),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(5)),
                                Text(
                                  "DN Block, Sector 5, Salt \nLake, Kolkata",
                                  style: TextStyle(
                                    color: Color(0xFF889399),
                                    fontSize: getProportionateScreenWidth(11),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(10)),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Image.asset(
                                      "assets/images/bed_room_image.png",
                                      width: getProportionateScreenWidth(15),
                                      height: getProportionateScreenHeight(15),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(5)),
                                    Text(
                                      "04",
                                      style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(10),
                                      ),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(5)),
                                    Image.asset(
                                      "assets/images/bath_room_image.png",
                                      width: getProportionateScreenWidth(15),
                                      height: getProportionateScreenHeight(15),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(5)),
                                    Text(
                                      "05",
                                      style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(10),
                                      ),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(5)),
                                    Image.asset(
                                      "assets/images/sq_foot_image.png",
                                      width: getProportionateScreenWidth(15),
                                      height: getProportionateScreenHeight(15),
                                    ),
                                    SizedBox(
                                      width: getProportionateScreenWidth(2),
                                    ),
                                    Text(
                                      "2100 Sq/m",
                                      style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(10),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    Container(
                      height: getProportionateScreenHeight(144),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset("assets/images/connect_icon.svg"),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Connect your device for 3D Tour",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: getProportionateScreenWidth(16),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "Compellingly communicate leading-edge ROI \nrather than scalable schemas.",
                                style: TextStyle(
                                  color: Color(0xFF889399),
                                  fontSize: getProportionateScreenWidth(11),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Container(
                                height: getProportionateScreenHeight(41),
                                width: getProportionateScreenWidth(91),
                                decoration: BoxDecoration(
                                  color: Color(0xFF3E67D6),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "Connet",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: getProportionateScreenWidth(12),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    Container(
                      height: getProportionateScreenHeight(30),
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Exclusive Projects",
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: getProportionateScreenWidth(17),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Image.asset(
                            "assets/images/arrow_forward_image.png",
                            width: 17,
                            height: 16,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PropertyInsidePage(),
                              ),
                            );
                          },
                          child: Container(
                            height: getProportionateScreenHeight(300),
                            width: getProportionateScreenWidth(162),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: getProportionateScreenHeight(145),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    Container(
                                      height: getProportionateScreenHeight(128),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFC4C4C4),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      right: 5,
                                      child: Container(
                                        height:
                                            getProportionateScreenHeight(27),
                                        width: getProportionateScreenWidth(55),
                                        decoration: BoxDecoration(
                                          color: Color(0xFF6E8BFE),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            bottomLeft: Radius.circular(5),
                                            bottomRight: Radius.circular(5),
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Owner",
                                          style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                            fontSize:
                                                getProportionateScreenWidth(14),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      left: 5,
                                      child: Container(
                                        width: 34,
                                        height: 34,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF979797),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(10)),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$ 4460.00",
                                      style: TextStyle(
                                        color: Color(0xFF0986E2),
                                        fontSize:
                                            getProportionateScreenWidth(17),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Image.asset(
                                      "assets/images/call_image.png",
                                      height: 18,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(5)),
                                Text(
                                  "Santi Nivas",
                                  style: TextStyle(
                                    color: Color(0xFF382D26),
                                    fontSize: getProportionateScreenWidth(16),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(5)),
                                Text(
                                  "DN Block, Sector 5, Salt \nLake, Kolkata",
                                  style: TextStyle(
                                    color: Color(0xFF889399),
                                    fontSize: getProportionateScreenWidth(11),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(10)),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Image.asset(
                                      "assets/images/bed_room_image.png",
                                      width: getProportionateScreenWidth(15),
                                      height: getProportionateScreenHeight(15),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(5)),
                                    Text(
                                      "04",
                                      style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(10),
                                      ),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(5)),
                                    Image.asset(
                                      "assets/images/bath_room_image.png",
                                      width: getProportionateScreenWidth(15),
                                      height: getProportionateScreenHeight(15),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(5)),
                                    Text(
                                      "05",
                                      style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(10),
                                      ),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(5)),
                                    Image.asset(
                                      "assets/images/sq_foot_image.png",
                                      width: getProportionateScreenWidth(15),
                                      height: getProportionateScreenHeight(15),
                                    ),
                                    SizedBox(
                                      width: getProportionateScreenWidth(2),
                                    ),
                                    Text(
                                      "2100 Sq/m",
                                      style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(10),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: getProportionateScreenWidth(10)),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PropertyInsidePage(),
                              ),
                            );
                          },
                          child: Container(
                            height: getProportionateScreenHeight(300),
                            width: getProportionateScreenWidth(162),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: getProportionateScreenHeight(145),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    Container(
                                      height: getProportionateScreenHeight(128),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFC4C4C4),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      right: 5,
                                      child: Container(
                                        height:
                                            getProportionateScreenHeight(27),
                                        width: getProportionateScreenWidth(55),
                                        decoration: BoxDecoration(
                                          color: Color(0xFF6E8BFE),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            bottomLeft: Radius.circular(5),
                                            bottomRight: Radius.circular(5),
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Owner",
                                          style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                            fontSize:
                                                getProportionateScreenWidth(14),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      left: 5,
                                      child: Container(
                                        width: 34,
                                        height: 34,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF979797),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(10)),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$ 4460.00",
                                      style: TextStyle(
                                        color: Color(0xFF0986E2),
                                        fontSize:
                                            getProportionateScreenWidth(17),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Image.asset(
                                      "assets/images/call_image.png",
                                      height: 18,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(5)),
                                Text(
                                  "Santi Nivas",
                                  style: TextStyle(
                                    color: Color(0xFF382D26),
                                    fontSize: getProportionateScreenWidth(16),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(5)),
                                Text(
                                  "DN Block, Sector 5, Salt \nLake, Kolkata",
                                  style: TextStyle(
                                    color: Color(0xFF889399),
                                    fontSize: getProportionateScreenWidth(11),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(10)),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Image.asset(
                                      "assets/images/bed_room_image.png",
                                      width: getProportionateScreenWidth(15),
                                      height: getProportionateScreenHeight(15),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(5)),
                                    Text(
                                      "04",
                                      style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(10),
                                      ),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(5)),
                                    Image.asset(
                                      "assets/images/bath_room_image.png",
                                      width: getProportionateScreenWidth(15),
                                      height: getProportionateScreenHeight(15),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(5)),
                                    Text(
                                      "05",
                                      style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(10),
                                      ),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(5)),
                                    Image.asset(
                                      "assets/images/sq_foot_image.png",
                                      width: getProportionateScreenWidth(15),
                                      height: getProportionateScreenHeight(15),
                                    ),
                                    SizedBox(
                                      width: getProportionateScreenWidth(2),
                                    ),
                                    Text(
                                      "2100 Sq/m",
                                      style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(10),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    Container(
                      height: getProportionateScreenHeight(30),
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Fresh property for you",
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: getProportionateScreenWidth(17),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Image.asset(
                            "assets/images/arrow_forward_image.png",
                            width: 17,
                            height: 16,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PropertyInsidePage(),
                              ),
                            );
                          },
                          child: Container(
                            height: getProportionateScreenHeight(300),
                            width: getProportionateScreenWidth(162),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: getProportionateScreenHeight(145),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    Container(
                                      height: getProportionateScreenHeight(128),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFC4C4C4),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      right: 5,
                                      child: Container(
                                        height:
                                            getProportionateScreenHeight(27),
                                        width: getProportionateScreenWidth(55),
                                        decoration: BoxDecoration(
                                          color: Color(0xFF6E8BFE),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            bottomLeft: Radius.circular(5),
                                            bottomRight: Radius.circular(5),
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Owner",
                                          style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                            fontSize:
                                                getProportionateScreenWidth(14),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      left: 5,
                                      child: Container(
                                        width: 34,
                                        height: 34,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF979797),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(10)),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$ 4460.00",
                                      style: TextStyle(
                                        color: Color(0xFF0986E2),
                                        fontSize:
                                            getProportionateScreenWidth(17),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Image.asset(
                                      "assets/images/call_image.png",
                                      height: 18,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(5)),
                                Text(
                                  "Santi Nivas",
                                  style: TextStyle(
                                    color: Color(0xFF382D26),
                                    fontSize: getProportionateScreenWidth(16),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(5)),
                                Text(
                                  "DN Block, Sector 5, Salt \nLake, Kolkata",
                                  style: TextStyle(
                                    color: Color(0xFF889399),
                                    fontSize: getProportionateScreenWidth(11),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(10)),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Image.asset(
                                      "assets/images/bed_room_image.png",
                                      width: getProportionateScreenWidth(15),
                                      height: getProportionateScreenHeight(15),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(5)),
                                    Text(
                                      "04",
                                      style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(10),
                                      ),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(5)),
                                    Image.asset(
                                      "assets/images/bath_room_image.png",
                                      width: getProportionateScreenWidth(15),
                                      height: getProportionateScreenHeight(15),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(5)),
                                    Text(
                                      "05",
                                      style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(10),
                                      ),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(5)),
                                    Image.asset(
                                      "assets/images/sq_foot_image.png",
                                      width: getProportionateScreenWidth(15),
                                      height: getProportionateScreenHeight(15),
                                    ),
                                    SizedBox(
                                      width: getProportionateScreenWidth(2),
                                    ),
                                    Text(
                                      "2100 Sq/m",
                                      style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(10),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: getProportionateScreenWidth(10)),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PropertyInsidePage(),
                              ),
                            );
                          },
                          child: Container(
                            height: getProportionateScreenHeight(300),
                            width: getProportionateScreenWidth(162),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: getProportionateScreenHeight(145),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    Container(
                                      height: getProportionateScreenHeight(128),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFC4C4C4),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      right: 5,
                                      child: Container(
                                        height:
                                            getProportionateScreenHeight(27),
                                        width: getProportionateScreenWidth(55),
                                        decoration: BoxDecoration(
                                          color: Color(0xFF6E8BFE),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            bottomLeft: Radius.circular(5),
                                            bottomRight: Radius.circular(5),
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Owner",
                                          style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                            fontSize:
                                                getProportionateScreenWidth(14),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      left: 5,
                                      child: Container(
                                        width: 34,
                                        height: 34,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF979797),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(10)),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$ 4460.00",
                                      style: TextStyle(
                                        color: Color(0xFF0986E2),
                                        fontSize:
                                            getProportionateScreenWidth(17),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Image.asset(
                                      "assets/images/call_image.png",
                                      height: 18,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(5)),
                                Text(
                                  "Santi Nivas",
                                  style: TextStyle(
                                    color: Color(0xFF382D26),
                                    fontSize: getProportionateScreenWidth(16),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(5)),
                                Text(
                                  "DN Block, Sector 5, Salt \nLake, Kolkata",
                                  style: TextStyle(
                                    color: Color(0xFF889399),
                                    fontSize: getProportionateScreenWidth(11),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(10)),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Image.asset(
                                      "assets/images/bed_room_image.png",
                                      width: getProportionateScreenWidth(15),
                                      height: getProportionateScreenHeight(15),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(5)),
                                    Text(
                                      "04",
                                      style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(10),
                                      ),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(5)),
                                    Image.asset(
                                      "assets/images/bath_room_image.png",
                                      width: getProportionateScreenWidth(15),
                                      height: getProportionateScreenHeight(15),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(5)),
                                    Text(
                                      "05",
                                      style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(10),
                                      ),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(5)),
                                    Image.asset(
                                      "assets/images/sq_foot_image.png",
                                      width: getProportionateScreenWidth(15),
                                      height: getProportionateScreenHeight(15),
                                    ),
                                    SizedBox(
                                      width: getProportionateScreenWidth(2),
                                    ),
                                    Text(
                                      "2100 Sq/m",
                                      style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(10),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Container(
                height: getProportionateScreenHeight(257),
                width: double.infinity,
                color: Color(0xFF182D67),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: getProportionateScreenHeight(20)),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20)),
                      child: Text(
                        "Featured projects",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: getProportionateScreenWidth(17),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    SizedBox(
                      height: getProportionateScreenHeight(157),
                      width: double.infinity,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Container(
                          height: getProportionateScreenHeight(157),
                          width: getProportionateScreenWidth(300),
                          margin: EdgeInsets.only(
                              left: getProportionateScreenWidth(20)),
                          padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenHeight(5),
                            vertical: getProportionateScreenWidth(5),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFCEDBFF),
                                Color(0xFF000000).withOpacity(.5),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              PropertyInsidePage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      height: getProportionateScreenHeight(32),
                                      width: getProportionateScreenWidth(74),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          bottomLeft: Radius.circular(5),
                                          bottomRight: Radius.circular(5),
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Sponsored",
                                        style: TextStyle(
                                          color: Color(0xFF0986E2),
                                          fontSize:
                                              getProportionateScreenWidth(12),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        getProportionateScreenWidth(15)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Santi Nivas",
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize:
                                            getProportionateScreenWidth(18),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: getProportionateScreenHeight(5),
                                    ),
                                    Text(
                                      "DN Block, Sector 5, Salt Lake, Kolkata",
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize:
                                            getProportionateScreenWidth(11),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      height: getProportionateScreenHeight(10),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height:
                                              getProportionateScreenHeight(35),
                                          width: getProportionateScreenWidth(5),
                                          color: Color(0xFFFF4242),
                                        ),
                                        SizedBox(
                                          width: getProportionateScreenWidth(5),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "2, 3 bhks",
                                              style: TextStyle(
                                                color: Color(0xFFFFFFFF),
                                                fontSize:
                                                    getProportionateScreenWidth(
                                                        11),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              height:
                                                  getProportionateScreenHeight(
                                                      5),
                                            ),
                                            Text(
                                              "\$36.5 Onwards",
                                              style: TextStyle(
                                                color: Color(0xFFFFFFFF),
                                                fontSize:
                                                    getProportionateScreenWidth(
                                                        11),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tools to help you decide better",
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: getProportionateScreenWidth(17),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    Container(
                      height: getProportionateScreenHeight(75),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        border: Border.all(
                          color: Color(0xFF3E67D6),
                          width: .5,
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: getProportionateScreenWidth(10)),
                          Image.asset(
                            "assets/images/property_area_image.png",
                            width: 47,
                            height: 47,
                          ),
                          SizedBox(width: getProportionateScreenWidth(15)),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Property area value",
                                style: TextStyle(
                                  color: Color(0xFF313131),
                                  fontSize: getProportionateScreenWidth(11),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                  height: getProportionateScreenHeight(10)),
                              Text(
                                "Globally e-enable worldwide infomediaries",
                                style: TextStyle(
                                  color: Color(0xFF889399),
                                  fontSize: getProportionateScreenWidth(11),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            "assets/images/arrow_forward_icon.svg",
                          ),
                          SizedBox(width: getProportionateScreenWidth(15)),
                        ],
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoanCalculatorPageTwo(),
                          ),
                        );
                      },
                      child: Container(
                        height: getProportionateScreenHeight(75),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          border: Border.all(
                            color: Color(0xFF3E67D6),
                            width: .5,
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: getProportionateScreenWidth(10)),
                            Image.asset(
                              "assets/images/loan_calculator_image.png",
                              width: 47,
                              height: 47,
                            ),
                            SizedBox(width: getProportionateScreenWidth(15)),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Loan calculator",
                                  style: TextStyle(
                                    color: Color(0xFF313131),
                                    fontSize: getProportionateScreenWidth(11),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(10)),
                                Text(
                                  "Globally e-enable worldwide infomediaries",
                                  style: TextStyle(
                                    color: Color(0xFF889399),
                                    fontSize: getProportionateScreenWidth(11),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            SvgPicture.asset(
                              "assets/images/arrow_forward_icon.svg",
                            ),
                            SizedBox(width: getProportionateScreenWidth(15)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(40)),
            ],
          ),
        ),
      ),
    );
  }
}
