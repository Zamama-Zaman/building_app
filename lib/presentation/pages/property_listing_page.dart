// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_tor_app/presentation/pages/conversation_page.dart';
import 'package:real_tor_app/presentation/pages/property_inside_page.dart';
import 'package:real_tor_app/size_config.dart';

import '../../constants.dart';

class PropertyListingPage extends StatelessWidget {
  const PropertyListingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Constant.kPrimaryColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Constant.kPrimaryColor,
        title: Text(
          "Property Listing",
          style: TextStyle(
            color: Constant.kWhiteColor,
          ),
        ),
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Constant.kWhiteColor)),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              color: Constant.kWhiteColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 30,
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
                            height: 33.56,
                            width: double.infinity,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Text(
                                  "264 Results in",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 15),
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
                                IconButton(
                                  onPressed: null,
                                  icon: SvgPicture.asset(
                                    "assets/images/option_icon.svg",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            height: screenHeight / 1.37,
                            width: double.infinity,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) => InkWell(
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
                                  height: 127,
                                  width: double.infinity,
                                  margin: EdgeInsets.only(bottom: 20),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 127,
                                        width: 170,
                                        color: Colors.transparent,
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: 123,
                                              width: 150,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFC4C4C4),
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              right: 0,
                                              bottom: 0,
                                              child: Container(
                                                height: 49,
                                                width: 49,
                                                padding: EdgeInsets.all(3),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // SizedBox(
                                      //   width: getProportionateScreenWidth(
                                      //     5,
                                      //   ),
                                      // ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "\$ 4460.00",
                                                    style: TextStyle(
                                                      fontSize:
                                                          getProportionateScreenWidth(
                                                        16,
                                                      ),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  InkWell(
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              ConversationPage(),
                                                        ),
                                                      );
                                                    },
                                                    child: Image.asset(
                                                      "assets/images/call_image.png",
                                                      width:
                                                          getProportionateScreenWidth(
                                                        25,
                                                      ),
                                                      height:
                                                          getProportionateScreenHeight(
                                                        25,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height:
                                                  getProportionateScreenHeight(
                                                      10),
                                            ),
                                            Text(
                                              "White Tower",
                                              style: TextStyle(
                                                fontSize:
                                                    getProportionateScreenWidth(
                                                        14),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(
                                                height:
                                                    getProportionateScreenHeight(
                                                        10)),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Image.asset(
                                                  "assets/images/bed_room_image.png",
                                                  width:
                                                      getProportionateScreenWidth(
                                                    15,
                                                  ),
                                                  // height: 15,
                                                ),
                                                SizedBox(
                                                  width:
                                                      getProportionateScreenWidth(
                                                          5),
                                                ),
                                                Text(
                                                  "04",
                                                  style: TextStyle(
                                                    fontSize:
                                                        getProportionateScreenWidth(
                                                      10,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                    width:
                                                        getProportionateScreenWidth(
                                                  5,
                                                )),
                                                Image.asset(
                                                  "assets/images/bath_room_image.png",
                                                  width:
                                                      getProportionateScreenWidth(
                                                          15),
                                                  // height: 15,
                                                ),
                                                SizedBox(
                                                  width:
                                                      getProportionateScreenWidth(
                                                          5),
                                                ),
                                                Text(
                                                  "05",
                                                  style: TextStyle(
                                                    fontSize:
                                                        getProportionateScreenWidth(
                                                      10,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width:
                                                      getProportionateScreenWidth(
                                                          2),
                                                ),
                                                Image.asset(
                                                  "assets/images/sq_foot_image.png",
                                                  width:
                                                      getProportionateScreenWidth(
                                                    15,
                                                  ),
                                                  // height: 15,
                                                ),
                                                SizedBox(
                                                  width:
                                                      getProportionateScreenWidth(
                                                    5,
                                                  ),
                                                ),
                                                Text(
                                                  "21 Sq/m",
                                                  style: TextStyle(
                                                    fontSize:
                                                        getProportionateScreenWidth(
                                                      10,
                                                    ),
                                                  ),
                                                ),
                                                // SizedBox(width: 10),
                                              ],
                                            ),
                                            SizedBox(
                                                height:
                                                    getProportionateScreenHeight(
                                                        20)),
                                            Container(
                                              height: 25,
                                              padding: EdgeInsets.symmetric(
                                                horizontal:
                                                    getProportionateScreenWidth(
                                                  10,
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Color(0xFFF0FBCC),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "Mary J Baines",
                                                    style: TextStyle(
                                                      fontSize:
                                                          getProportionateScreenWidth(
                                                        12,
                                                      ),
                                                      color: Color(0xFFAAD362),
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    "Agent",
                                                    style: TextStyle(
                                                      fontSize:
                                                          getProportionateScreenWidth(
                                                              10),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
