// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class ChatHistoryPage extends StatelessWidget {
  const ChatHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.kPrimaryColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Constant.kPrimaryColor,
        title: Text(
          "Conversations",
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
            onPressed: () {},
            icon: SvgPicture.asset("assets/images/search_icon.svg"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Constant.kPrimaryButtonColor,
        onPressed: null,
        child: IconButton(
          onPressed: null,
          icon: SvgPicture.asset("assets/images/edit_icon.svg"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30,
                  width: double.infinity,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 25),
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
                        height: 66,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
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
                            Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                color: Constant.kPrimaryColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    "assets/images/search_icon.svg"),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Search an Agent",
                                  hintStyle: TextStyle(
                                    color: Constant.kTextGreyWhiteColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 94.53,
                        width: double.infinity,
                        color: Colors.transparent,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            if (index == 0) {
                              return Container(
                                margin: EdgeInsets.only(right: 20, bottom: 20),
                                height: 74.53,
                                width: 74.53,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    color: Color(0xFFEBFDFF),
                                    width: 1,
                                  ),
                                ),
                                child: IconButton(
                                  onPressed: null,
                                  icon: SvgPicture.asset(
                                    "assets/images/add_icon_bold.svg",
                                    color: Color(0xFFB3DDE8),
                                  ),
                                ),
                              );
                            }
                            return Container(
                              height: 74.53,
                              width: 74.53,
                              margin: EdgeInsets.only(right: 20, bottom: 20),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
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
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xFFC4C4C4),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 21,
                        width: double.infinity,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "40  Conversation",
                              style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 12,
                              ),
                            ),
                            Container(
                              height: 21,
                              width: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFFB4DA33),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                "Active",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      ...List.generate(
                        10,
                        (index) {
                          return Container(
                            height: 56,
                            margin: EdgeInsets.only(bottom: 20),
                            width: double.infinity,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFC4C4C4),
                                    borderRadius: BorderRadius.circular(50),
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
                                ),
                                SizedBox(width: 20),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Jessica Parker",
                                      style: TextStyle(
                                        color: Color(0xFF484D61),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "Phosfluorescently evolve end-to-end",
                                      style: TextStyle(
                                        color: Color(0xFF484D61),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
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
