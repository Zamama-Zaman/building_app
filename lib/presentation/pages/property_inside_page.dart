// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_tor_app/presentation/pages/agent_profile_page.dart';
import 'package:real_tor_app/presentation/pages/chat_history_page.dart';
import 'package:real_tor_app/presentation/pages/conversation_page.dart';
import 'package:real_tor_app/presentation/pages/loan_calculator_page_two.dart';

import '../../size_config.dart';

class PropertyInsidePage extends StatelessWidget {
  const PropertyInsidePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: getProportionateScreenHeight(315),
                  color: Colors.transparent,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(width: SizeConfig.screenWidth * 0.30),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Mary J Baines",
                              style: TextStyle(
                                color: Color(0xFFAED964),
                                fontSize: getProportionateScreenWidth(16),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: SizeConfig.screenWidth * 0.02),
                            Row(
                              children: [
                                Text(
                                  "Agent",
                                  style: TextStyle(
                                    color: Color(0xFF3E4A50).withOpacity(.5),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  height: 20,
                                  width: 43,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/images/star_icon.svg",
                                      ),
                                      Text(
                                        "4.5",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize:
                                              getProportionateScreenHeight(11),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: SizeConfig.screenWidth * 0.15),
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
                                    "assets/images/mail_image.png",
                                    height: 35,
                                  ),
                                ),
                                SizedBox(width: SizeConfig.screenWidth * 0.05),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ChatHistoryPage(),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    "assets/images/call_image.png",
                                    height: 35,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: SizeConfig.screenHeight * 0.01),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: getProportionateScreenHeight(256),
                  color: Colors.grey.shade300,
                ),
                Positioned(
                  bottom: 0,
                  left: 30,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AgentProfilePage(),
                        ),
                      );
                    },
                    child: Container(
                      width: 70,
                      height: 70,
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red.shade300,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.04),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "White Tower",
                        style: TextStyle(
                          color: Color(0xFF382D26),
                          fontSize: getProportionateScreenWidth(17),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: getProportionateScreenWidth(10)),
                      Container(
                        height: getProportionateScreenHeight(25),
                        width: getProportionateScreenWidth(40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Color(0xFFB4DA33),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Open',
                          style: TextStyle(
                            color: Color(0xFF889399),
                            fontSize: getProportionateScreenWidth(11),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        '\$ 2,4460,000',
                        style: TextStyle(
                          color: Color(0xFF0986E2),
                          fontSize: getProportionateScreenWidth(17),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(
                      SizeConfig.screenHeight * 0.02,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: getProportionateScreenHeight(25),
                        width: getProportionateScreenWidth(45),
                        decoration: BoxDecoration(
                          color: Color(0xFF0986E2),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '4 BHK',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: getProportionateScreenWidth(11),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(
                          SizeConfig.screenWidth * 0.02,
                        ),
                      ),
                      SvgPicture.asset("assets/images/location_pin_icon.svg"),
                      SizedBox(
                        width: getProportionateScreenWidth(
                          SizeConfig.screenWidth * 0.02,
                        ),
                      ),
                      Text(
                        '1496  Leisure Lane',
                        style: TextStyle(
                          color: Color(0xFF889399),
                          fontSize: getProportionateScreenWidth(11),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoanCalculatorPageTwo(),
                            ),
                          );
                        },
                        child: Text(
                          'EMI Calculate',
                          style: TextStyle(
                            color: Color(0xFF484D61),
                            fontSize: getProportionateScreenWidth(11),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(
                SizeConfig.screenHeight * 0.04,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: getProportionateScreenHeight(82),
                    width: getProportionateScreenWidth(66),
                    padding: EdgeInsets.only(
                      top: 8,
                      right: 0,
                      left: 8,
                      bottom: 8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Color(0xFF0986E2).withOpacity(.5),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/images/bed_room_icon.svg"),
                        Text(
                          '04 Beds',
                          style: TextStyle(
                            color: Color(0xFF484D61),
                            fontSize: getProportionateScreenWidth(12),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getProportionateScreenHeight(82),
                    width: getProportionateScreenWidth(66),
                    padding: EdgeInsets.only(
                      top: 8,
                      right: 0,
                      left: 8,
                      bottom: 8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Color(0xFF0986E2).withOpacity(.5),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/images/bath_room_icon.svg"),
                        Text(
                          '1 Bath',
                          style: TextStyle(
                            color: Color(0xFF484D61),
                            fontSize: getProportionateScreenWidth(12),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getProportionateScreenHeight(82),
                    width: getProportionateScreenWidth(66),
                    padding: EdgeInsets.only(
                      top: 8,
                      right: 0,
                      left: 8,
                      bottom: 8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Color(0xFF0986E2).withOpacity(.5),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/images/parking_icon.svg"),
                        Text(
                          '1 Park',
                          style: TextStyle(
                            color: Color(0xFF484D61),
                            fontSize: getProportionateScreenWidth(12),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getProportionateScreenHeight(82),
                    width: getProportionateScreenWidth(66),
                    padding: EdgeInsets.only(
                      top: 8,
                      right: 0,
                      left: 8,
                      bottom: 8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Color(0xFF0986E2).withOpacity(.5),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/images/CCTV_icon.svg"),
                        Text(
                          '1 CCTV',
                          style: TextStyle(
                            color: Color(0xFF484D61),
                            fontSize: getProportionateScreenWidth(12),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(
                SizeConfig.screenHeight * 0.04,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(39),
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: _stringList.length,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Container(
                      margin: EdgeInsets.only(
                          left: getProportionateScreenWidth(20)),
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(13),
                        vertical: getProportionateScreenHeight(10),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF0986E2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        _stringList[index],
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: getProportionateScreenWidth(13),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    );
                  }
                  return Container(
                    margin:
                        EdgeInsets.only(left: getProportionateScreenWidth(10)),
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(13),
                      vertical: getProportionateScreenHeight(10),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Color(0xFFB2BFD1),
                      ),
                    ),
                    child: Text(
                      _stringList[index],
                      style: TextStyle(
                        color: Color(0xFF3F4655),
                        fontSize: getProportionateScreenWidth(13),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(
                SizeConfig.screenHeight * 0.04,
              ),
            ),

            ///Details
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Details",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ...List.generate(
                    _detailList.length,
                    (index) => Container(
                      height: getProportionateScreenHeight(30),
                      width: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            width: getProportionateScreenWidth(150),
                            child: Text(
                              _detailList[index].name,
                              style: TextStyle(
                                color: Color(0xFFAAAAAA),
                                fontSize: getProportionateScreenWidth(12),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   width: getProportionateScreenWidth(
                          //     SizeConfig.screenWidth * 0.23,
                          //   ),
                          // ),
                          Container(
                            width: getProportionateScreenWidth(125),
                            child: Text(
                              _detailList[index].descr,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color(0xFF484D61),
                                fontSize: getProportionateScreenWidth(12),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ///Amenities
            SizedBox(height: getProportionateScreenHeight(40)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Amenities",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  SizedBox(
                    height: 76,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          height: 71,
                          width: 60,
                          color: Colors.transparent,
                          margin: EdgeInsets.only(
                              right: getProportionateScreenWidth(5)),
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEAF3FA),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/images/parking_icon.svg",
                                    width: 25,
                                    height: 25,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Parking",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                        Container(
                          height: 71,
                          width: 60,
                          color: Colors.transparent,
                          margin: EdgeInsets.only(
                              right: getProportionateScreenWidth(5)),
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEAF3FA),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/images/lift_icon.svg",
                                    width: 25,
                                    height: 25,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Lift",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                        Container(
                          height: 76,
                          width: 60,
                          color: Colors.transparent,
                          margin: EdgeInsets.only(
                              right: getProportionateScreenWidth(5)),
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEAF3FA),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/images/power_bank_icon.svg",
                                    width: 25,
                                    height: 25,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Power\nBackup",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 71,
                          width: 60,
                          color: Colors.transparent,
                          margin: EdgeInsets.only(
                              right: getProportionateScreenWidth(5)),
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEAF3FA),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/images/park_icon.svg",
                                    width: 25,
                                    height: 25,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Park",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                        Container(
                          height: 71,
                          width: 60,
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEAF3FA),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/images/CCTV_icon.svg",
                                    width: 25,
                                    height: 25,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "CCTV",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(40)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Other pic",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  SizedBox(
                    height: getProportionateScreenHeight(100),
                    width: double.infinity,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Container(
                            height: getProportionateScreenHeight(100),
                            width: getProportionateScreenWidth(100),
                            margin: EdgeInsets.only(
                                left: getProportionateScreenWidth(0)),
                            decoration: BoxDecoration(
                              color: Color(0xFFC4C4C4),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          );
                        }
                        return Container(
                          height: getProportionateScreenHeight(100),
                          width: getProportionateScreenWidth(100),
                          margin: EdgeInsets.only(
                              left: getProportionateScreenWidth(10)),
                          decoration: BoxDecoration(
                            color: Color(0xFFC4C4C4),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(40)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Map View",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  Container(
                    height: getProportionateScreenHeight(107),
                    width: double.infinity,
                    color: Color(0xFFC4C4C4),
                  ),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Near Services",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  SizedBox(
                    height: 76,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          height: 71,
                          width: 60,
                          color: Colors.transparent,
                          margin: EdgeInsets.only(
                              right: getProportionateScreenWidth(5)),
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEAF3FA),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/images/mall_icon.svg",
                                    width: 25,
                                    height: 25,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Mall",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                        Container(
                          height: 71,
                          width: 60,
                          color: Colors.transparent,
                          margin: EdgeInsets.only(
                              right: getProportionateScreenWidth(5)),
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEAF3FA),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/images/rail_icon.svg",
                                    width: 25,
                                    height: 25,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Rail",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                        Container(
                          height: 76,
                          width: 60,
                          color: Colors.transparent,
                          margin: EdgeInsets.only(
                              right: getProportionateScreenWidth(5)),
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEAF3FA),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/images/bus_icon.svg",
                                    width: 25,
                                    height: 25,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Bus Stop",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 71,
                          width: 60,
                          color: Colors.transparent,
                          margin: EdgeInsets.only(
                              right: getProportionateScreenWidth(5)),
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEAF3FA),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/images/park_icon.svg",
                                    width: 25,
                                    height: 25,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Park",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                        Container(
                          height: 71,
                          width: 60,
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEAF3FA),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/images/school_icon.svg",
                                    width: 25,
                                    height: 25,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "School",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  Container(
                    height: getProportionateScreenHeight(103),
                    width: getProportionateScreenWidth(354),
                    color: Color(0xFFFFFFFF),
                    child: Text(
                      'Distinctively generate orthogonal catalysts for change through high-quality imperatives. Distinctively supply team building action items via state of the art materials. Credibly generate stand-alone alignments for cutting-edge solutions. Quickly impact backward-compatible growth strategies via bricks-and-clicks materials. Globally utilize extensible services after B2C core competencies.',
                      style: TextStyle(
                        color: Color(0xFF889399),
                        fontSize: getProportionateScreenWidth(11),
                        fontWeight: FontWeight.w400,
                      ),
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
                    builder: (context) => ChatHistoryPage(),
                  ),
                );
              },
              child: Container(
                height: 46,
                padding: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.symmetric(horizontal: 80),
                decoration: BoxDecoration(
                  color: Color(0xFFEA4C89),
                  borderRadius: BorderRadius.circular(50),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Check Availability",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
          ],
        ),
      ),
    );
  }
}

List<String> _stringList = [
  "Property Details",
  "Price Trands",
  "About",
  "FAQ's",
];

class DetailClass {
  final String name;
  final String descr;
  DetailClass({required this.name, required this.descr});
}

List<DetailClass> _detailList = [
  DetailClass(name: "Cover are:", descr: "1500 sqft"),
  DetailClass(name: "Carpet area:", descr: "800sqft"),
  DetailClass(name: "Facing", descr: "South - west"),
  DetailClass(name: "Transation", descr: "Underconstraction"),
  DetailClass(name: "Overlooking", descr: "Main road"),
  DetailClass(name: "Token Money", descr: "1"),
  DetailClass(name: "Lank Mark", descr: "XX Shopping Mall"),
];
