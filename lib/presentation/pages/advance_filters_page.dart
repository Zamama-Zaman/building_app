// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_tor_app/presentation/widgets/app_bar_widget.dart';

import '../../constants.dart';
import '../../size_config.dart';

class AdvanceFilterPage extends StatefulWidget {
  const AdvanceFilterPage({Key? key}) : super(key: key);

  @override
  State<AdvanceFilterPage> createState() => _AdvanceFilterPageState();
}

class _AdvanceFilterPageState extends State<AdvanceFilterPage> {
  String _dropDownSqft = "Sqft";
  String _dropDownMax = "Max";
  String _dropDownMin = "Min";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.kPrimaryColor,
      appBar: appBarWidget2(
        () {
          Navigator.pop(context);
        },
        "Property Search Filters",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(50),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenHeight(30)),
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
                      SizedBox(height: getProportionateScreenHeight(50)),
                      Row(
                        children: [
                          Container(
                            width: 60.56,
                            height: 33.56,
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF3FA),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Flat",
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
                          SizedBox(width: getProportionateScreenWidth(10)),
                          Container(
                            height: 33.56,
                            width: 70.56,
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF3FA),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "1 BHK",
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
                          SizedBox(width: getProportionateScreenWidth(10)),
                          Container(
                            height: 33.56,
                            width: 93.56,
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF3FA),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "\$3 - \$5500",
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
                          SizedBox(width: getProportionateScreenWidth(10)),
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
                                  "Furnished",
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
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(40)),
                      Text(
                        "Area",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(40)),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 32,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Colors.blue,
                                  width: .5,
                                ),
                              ),
                              child: DropdownButton(
                                underline: SizedBox(),
                                hint: Text(
                                  _dropDownSqft,
                                  style: TextStyle(
                                    color: Color(0xFF484D61),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                isExpanded: true,
                                iconSize: 30.0,
                                style: TextStyle(color: Color(0xFF484D61)),
                                items: ['Sqft', 'Sqft', 'Sqft'].map(
                                  (val) {
                                    return DropdownMenuItem<String>(
                                      value: val,
                                      child: Text(val),
                                    );
                                  },
                                ).toList(),
                                onChanged: (val) {
                                  setState(
                                    () {
                                      _dropDownSqft = val as String;
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          SizedBox(width: getProportionateScreenWidth(15)),
                          Expanded(
                            child: Container(
                              height: 32,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Colors.blue,
                                  width: .5,
                                ),
                              ),
                              child: DropdownButton(
                                underline: SizedBox(),
                                hint: Text(
                                  _dropDownMax,
                                  style: TextStyle(
                                    color: Color(0xFF484D61),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                isExpanded: true,
                                iconSize: 30.0,
                                style: TextStyle(color: Color(0xFF484D61)),
                                items: ['Max', 'Max', 'Max'].map(
                                  (val) {
                                    return DropdownMenuItem<String>(
                                      value: val,
                                      child: Text(val),
                                    );
                                  },
                                ).toList(),
                                onChanged: (val) {
                                  setState(
                                    () {
                                      _dropDownMax = val as String;
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          SizedBox(width: getProportionateScreenWidth(15)),
                          Expanded(
                            child: Container(
                              height: 32,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Colors.blue,
                                  width: .5,
                                ),
                              ),
                              child: DropdownButton(
                                underline: SizedBox(),
                                hint: Text(
                                  _dropDownMin,
                                  style: TextStyle(
                                    color: Color(0xFF484D61),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                isExpanded: true,
                                iconSize: 30.0,
                                style: TextStyle(color: Color(0xFF484D61)),
                                items: ['Min', 'Min', 'Min'].map(
                                  (val) {
                                    return DropdownMenuItem<String>(
                                      value: val,
                                      child: Text(val),
                                    );
                                  },
                                ).toList(),
                                onChanged: (val) {
                                  setState(
                                    () {
                                      _dropDownMin = val as String;
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(40)),
                      Text(
                        "Posted by",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(40)),
                      SizedBox(
                        height: 71,
                        width: 343,
                        child: Row(
                          children: [
                            Container(
                              height: 71,
                              width: 60,
                              margin: EdgeInsets.only(
                                  right: getProportionateScreenWidth(31)),
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
                                        "assets/images/agent_icon.svg",
                                        width: 25,
                                        height: 25,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Agent",
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
                              margin: EdgeInsets.only(
                                  right: getProportionateScreenWidth(31)),
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
                                        "assets/images/owner_icon.svg",
                                        width: 25,
                                        height: 25,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Owner",
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
                              margin: EdgeInsets.only(
                                  right: getProportionateScreenWidth(31)),
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
                                        "assets/images/builder_icon.svg",
                                        width: 25,
                                        height: 25,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Builder",
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
                      SizedBox(height: getProportionateScreenHeight(40)),
                      Text(
                        "Posted Since",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(40)),
                      Row(
                        children: [
                          Container(
                            height: 33.56,
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF3FA),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Yesterday",
                              style: TextStyle(
                                color: Color(0xFF484D61),
                                fontSize: 11,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 33.56,
                            // width: 102.56,
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF3FA),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Last week",
                              style: TextStyle(
                                color: Color(0xFF484D61),
                                fontSize: 11,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 33.56,
                            // width: 102.56,
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF3FA),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Last 2 weeks",
                              style: TextStyle(
                                color: Color(0xFF484D61),
                                fontSize: 11,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 33.56,
                            // width: 102.56,
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF3FA),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Anytime",
                              style: TextStyle(
                                color: Color(0xFF484D61),
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(40)),
                      Text(
                        "Amenities",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(40)),
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
                      SizedBox(height: getProportionateScreenHeight(40)),
                      Text(
                        "Bathroom",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(40)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 33.56,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF3FA),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "1",
                              style: TextStyle(
                                color: Color(0xFF484D61),
                                fontSize: 11,
                              ),
                            ),
                          ),
                          // SizedBox(width: 10),
                          Container(
                            height: 33.56,
                            // width: 102.56,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF3FA),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "2",
                              style: TextStyle(
                                color: Color(0xFF484D61),
                                fontSize: 11,
                              ),
                            ),
                          ),
                          // SizedBox(width: 10),
                          Container(
                            height: 33.56,
                            // width: 102.56,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF3FA),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "3",
                              style: TextStyle(
                                color: Color(0xFF484D61),
                                fontSize: 11,
                              ),
                            ),
                          ),

                          Container(
                            height: 33.56,
                            // width: 102.56,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF3FA),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "4",
                              style: TextStyle(
                                color: Color(0xFF484D61),
                                fontSize: 11,
                              ),
                            ),
                          ),
                          Container(
                            height: 33.56,
                            // width: 102.56,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF3FA),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "5",
                              style: TextStyle(
                                color: Color(0xFF484D61),
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(40)),
                      Text(
                        "Facing",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(40)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 33.56,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF3FA),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "East",
                              style: TextStyle(
                                color: Color(0xFF484D61),
                                fontSize: 11,
                              ),
                            ),
                          ),
                          // SizedBox(width: 10),
                          Container(
                            height: 33.56,
                            // width: 102.56,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF3FA),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "North",
                              style: TextStyle(
                                color: Color(0xFF484D61),
                                fontSize: 11,
                              ),
                            ),
                          ),
                          // SizedBox(width: 10),
                          Container(
                            height: 33.56,
                            // width: 102.56,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF3FA),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "North - East",
                              style: TextStyle(
                                color: Color(0xFF484D61),
                                fontSize: 11,
                              ),
                            ),
                          ),

                          Container(
                            height: 33.56,
                            // width: 102.56,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF3FA),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "North - West",
                              style: TextStyle(
                                color: Color(0xFF484D61),
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(40)),
                      Container(
                        height: 46,
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Color(0xFFEA4C89),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "See all properties (55)",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(40)),
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
