// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:real_tor_app/constants.dart';
import 'package:real_tor_app/widgets/app_bar_widget.dart';

class AgentProfilePage extends StatelessWidget {
  const AgentProfilePage({Key? key}) : super(key: key);

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
          " My Profile",
          style: TextStyle(
            color: Constant.kWhiteColor,
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back, color: Constant.kWhiteColor),
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
                      height: 100,
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
                          SizedBox(height: 100),
                          Text(
                            "Anastasia Mari",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "@ui.sia",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Constant.kTextBlueColor,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 103,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  color: Colors.transparent,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Photos",
                                        style: TextStyle(
                                          color: Color(0xFFC4C4C4),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        "567",
                                        style: TextStyle(
                                          color: Color(0xFF0986E2),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 80,
                                  width: 80,
                                  color: Colors.transparent,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Followers",
                                        style: TextStyle(
                                          color: Color(0xFFC4C4C4),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        "12,454",
                                        style: TextStyle(
                                          color: Color(0xFF0986E2),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 80,
                                  width: 80,
                                  color: Colors.transparent,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Follows",
                                        style: TextStyle(
                                          color: Color(0xFFC4C4C4),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        "127",
                                        style: TextStyle(
                                          color: Constant.kTextBlueColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            height: 373,
                            width: 353,
                            decoration: BoxDecoration(
                              // color: Colors.orange,
                              gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                end: Alignment.bottomLeft,
                                colors: <Color>[
                                  Colors.white,
                                  Colors.white,
                                  Colors.grey.shade400,
                                  Colors.grey.shade400
                                ],
                              ),
                              borderRadius: BorderRadius.circular(45),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 290,
                                  width: 353,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade400,
                                    borderRadius: BorderRadius.circular(45),
                                  ),
                                ),
                                Container(
                                  height: 83,
                                  width: 353,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(45),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 30),
                                      Container(
                                        width: 48,
                                        height: 48,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 15),
                                          Text(
                                            "Jessica Parker",
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            "1 hour aga",
                                            style: TextStyle(
                                              color:
                                                  Constant.kTextGreyWhiteColor,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                    // Expanded(
                    //   child: Container(
                    //     width: double.infinity,
                    //     color: Constant.kBackgroundColor,
                    //   ),
                    // ),
                    // Container(
                    //   height: 150,
                    //   width: double.infinity,
                    //   color: Colors.green,
                    // ),
                    // SizedBox(height: 10),
                    // Container(
                    //   height: 150,
                    //   width: double.infinity,
                    //   color: Colors.green,
                    // ),
                  ],
                ),
                Positioned(
                  top: screenHeight / 20,
                  right: screenWidth / 3.2,
                  child: Container(
                    height: 138,
                    width: 138,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(100),
                    ),
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
