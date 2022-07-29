// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_tor_app/presentation/pages/agent_profile_page.dart';
import 'package:real_tor_app/presentation/pages/chat_history_page.dart';
import 'package:real_tor_app/presentation/pages/property_search_filter_page.dart';
import 'package:real_tor_app/size_config.dart';
import 'package:real_tor_app/presentation/pages/advance_filters_page.dart';
import 'package:real_tor_app/presentation/pages/agent_profile_page.dart';
import 'package:real_tor_app/presentation/pages/chat_history_page.dart';
import 'package:real_tor_app/presentation/pages/home_page.dart';
import 'package:real_tor_app/presentation/pages/loan_bank_details_page.dart';
import 'package:real_tor_app/presentation/pages/loan_calculator_page_two.dart';
import 'package:real_tor_app/presentation/pages/login_page.dart';
import 'package:real_tor_app/presentation/pages/notification_page.dart';
import 'package:real_tor_app/presentation/pages/post_property_personal_detail_page.dart';
import 'package:real_tor_app/presentation/pages/post_property_pricing_detail_page.dart';
import 'package:real_tor_app/presentation/pages/post_property_property_detail.dart';
import 'package:real_tor_app/presentation/pages/post_property_start_page.dart';
import 'package:real_tor_app/presentation/pages/property_inside_page.dart';
import 'package:real_tor_app/presentation/pages/property_listing_page.dart';
import 'package:real_tor_app/presentation/pages/property_search_filter_page.dart';
import 'package:real_tor_app/presentation/pages/property_search_home.dart';

import '../../constants.dart';
import '../../custom_icons_icons.dart';

class PropertySearchHome extends StatefulWidget {
  const PropertySearchHome({Key? key}) : super(key: key);

  @override
  State<PropertySearchHome> createState() => _PropertySearchHomeState();
}

class _PropertySearchHomeState extends State<PropertySearchHome> {
  Widget popupMenuButton() {
    return PopupMenuButton(
      icon: const Icon(Icons.more_vert),
      // color: Colors.blueGrey,
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          child: TextButton(
              child: Text(
                'Agent Profile',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AgentProfilePage(),
                  ),
                );
              }),
        ),
        PopupMenuItem<String>(
          child: TextButton(
              child: const Text(
                'Chat History',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatHistoryPage(),
                  ),
                );
              }),
        ),
        PopupMenuItem<String>(
          child: TextButton(
              child: const Text(
                'Notificaiton Page',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationPage(),
                  ),
                );
              }),
        ),
        PopupMenuItem<String>(
          child: TextButton(
              child: const Text(
                'Property Listing Page',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PropertyListingPage(),
                  ),
                );
              }),
        ),
        PopupMenuItem<String>(
          child: TextButton(
              child: const Text(
                'Post Proterty Start Page',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PostPropertyStartPage(),
                  ),
                );
              }),
        ),
        PopupMenuItem<String>(
          child: TextButton(
              child: const Text(
                'Property Search Filter',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PropertySearchFilterPage(),
                  ),
                );
              }),
        ),
        PopupMenuItem<String>(
          child: TextButton(
              child: const Text(
                'Advance Filter',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdvanceFilterPage(),
                  ),
                );
              }),
        ),
        PopupMenuItem<String>(
          child: TextButton(
              child: const Text(
                'Home Page',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              }),
        ),
        PopupMenuItem<String>(
          child: TextButton(
            child: const Text(
              'Loan Bank Detail',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoanBankDetailPage(),
                ),
              );
            },
          ),
        ),
        PopupMenuItem<String>(
          child: TextButton(
            child: const Text(
              'Loan Calculator',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoanCalculatorPageTwo(),
                ),
              );
            },
          ),
        ),
        PopupMenuItem<String>(
          child: TextButton(
            child: const Text(
              'Property Inside',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PropertyInsidePage(),
                ),
              );
            },
          ),
        ),
        PopupMenuItem<String>(
          child: TextButton(
            child: const Text(
              'Post Property Personal Detail',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PostPropertyPersonalDetailPage(),
                ),
              );
            },
          ),
        ),
        PopupMenuItem<String>(
          child: TextButton(
            child: const Text(
              'Post Property Property Detail',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PostPropertyPropertyDetail(),
                ),
              );
            },
          ),
        ),
        PopupMenuItem<String>(
          child: TextButton(
            child: const Text(
              'Post Property Pricing Detail',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PostPropertyPricingDetailPage(),
                ),
              );
            },
          ),
        ),
      ],
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
          popupMenuButton(),
          IconButton(
            onPressed: null,
            icon: SvgPicture.asset("assets/images/search_icon.svg"),
          ),
        ],
      ),
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
                        // height: 244,
                        // width: 275,
                        height: SizeConfig.screenHeight * 0.35,
                        width: SizeConfig.screenWidth * 0.62,
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
