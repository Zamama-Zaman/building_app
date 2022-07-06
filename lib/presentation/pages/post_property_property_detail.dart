// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../../size_config.dart';

class PostPropertyPropertyDetail extends StatefulWidget {
  const PostPropertyPropertyDetail({Key? key}) : super(key: key);

  @override
  State<PostPropertyPropertyDetail> createState() =>
      _PostPropertyPropertyDetailState();
}

class _PostPropertyPropertyDetailState
    extends State<PostPropertyPropertyDetail> {
  int _selectedRadio = 1;
  int _selectedRadio2 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.kPrimaryColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Constant.kPrimaryColor,
        title: Text(
          "Propert Detail",
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
                      height: 10,
                      width: double.infinity,
                    ),
                    Container(
                      height: getProportionateScreenHeight(66),
                      width: getProportionateScreenWidth(352),
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          SizedBox(
                            width: getProportionateScreenWidth(
                              SizeConfig.screenWidth * 0.04,
                            ),
                          ),
                          SvgPicture.asset(
                            "assets/images/personal_details_icon.svg",
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(
                              SizeConfig.screenWidth * 0.02,
                            ),
                          ),
                          SvgPicture.asset(
                            "assets/images/horizontal_divider_icon.svg",
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(
                              SizeConfig.screenWidth * 0.02,
                            ),
                          ),
                          SvgPicture.asset(
                            "assets/images/property_detail_second_icon.svg",
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(
                              SizeConfig.screenWidth * 0.2,
                            ),
                          ),
                          SvgPicture.asset(
                            "assets/images/pricing_detail_first_icon.svg",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
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
                          SizedBox(height: getProportionateScreenHeight(20)),
                          Row(
                            children: [
                              // SizedBox(
                              //   width: getProportionateScreenWidth(
                              //     SizeConfig.screenWidth * 0.02,
                              //   ),
                              // ),
                              Container(
                                height: 66,
                                width: 66,
                                decoration: BoxDecoration(
                                  color: Color(0xFFC4C4C4),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(
                                  SizeConfig.screenWidth * 0.08,
                                ),
                              ),
                              Text(
                                'Hi,\nRayna Rhiel Madsen',
                                style: TextStyle(
                                  color: Color(0xFF484D61),
                                  fontSize: getProportionateScreenWidth(15),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: getProportionateScreenHeight(20)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'You are posting your property for',
                                style: TextStyle(
                                  color: Color(0xFF484D61),
                                  fontSize: getProportionateScreenWidth(13),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(
                                  SizeConfig.screenHeight * 0.02,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _selectedRadio = 1;
                                      });
                                    },
                                    child: Container(
                                      height: getProportionateScreenHeight(51),
                                      width: getProportionateScreenWidth(90),
                                      color: Color(0xFFEAF3FA),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            'Sell',
                                            style: TextStyle(
                                              color: Color(0xFF484D61),
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      11),
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Center(
                                            child: _selectedRadio == 1
                                                ? SvgPicture.asset(
                                                    "assets/images/radio_selected_icon.svg",
                                                    height: 30,
                                                    width: 30,
                                                  )
                                                : SvgPicture.asset(
                                                    "assets/images/radio_unselected_icon.svg",
                                                    height: 15,
                                                    width: 15,
                                                  ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _selectedRadio = 2;
                                      });
                                    },
                                    child: Container(
                                      height: getProportionateScreenHeight(51),
                                      width: getProportionateScreenWidth(90),
                                      color: Color(0xFFEAF3FA),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            'Rent/Lease',
                                            style: TextStyle(
                                              color: Color(0xFF484D61),
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      11),
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Center(
                                            child: _selectedRadio == 2
                                                ? SvgPicture.asset(
                                                    "assets/images/radio_selected_icon.svg",
                                                    height: 30,
                                                    width: 30,
                                                  )
                                                : SvgPicture.asset(
                                                    "assets/images/radio_unselected_icon.svg",
                                                    height: 15,
                                                    width: 15,
                                                  ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _selectedRadio = 3;
                                      });
                                    },
                                    child: Container(
                                      height: getProportionateScreenHeight(51),
                                      width: getProportionateScreenWidth(90),
                                      color: Color(0xFFEAF3FA),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            'PG',
                                            style: TextStyle(
                                              color: Color(0xFF484D61),
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      11),
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Center(
                                            child: _selectedRadio == 3
                                                ? SvgPicture.asset(
                                                    "assets/images/radio_selected_icon.svg",
                                                    height: 30,
                                                    width: 30,
                                                  )
                                                : SvgPicture.asset(
                                                    "assets/images/radio_unselected_icon.svg",
                                                    height: 15,
                                                    width: 15,
                                                  ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: getProportionateScreenHeight(20)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'What type of property is it?',
                                style: TextStyle(
                                  color: Color(0xFF484D61),
                                  fontSize: getProportionateScreenWidth(13),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(
                                  SizeConfig.screenHeight * 0.02,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _selectedRadio2 = 1;
                                      });
                                    },
                                    child: Container(
                                      height: getProportionateScreenHeight(51),
                                      width: getProportionateScreenWidth(90),
                                      color: Color(0xFFEAF3FA),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            'Residential',
                                            style: TextStyle(
                                              color: Color(0xFF484D61),
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      11),
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Center(
                                            child: _selectedRadio2 == 1
                                                ? SvgPicture.asset(
                                                    "assets/images/radio_selected_icon.svg",
                                                    height: 30,
                                                    width: 30,
                                                  )
                                                : SvgPicture.asset(
                                                    "assets/images/radio_unselected_icon.svg",
                                                    height: 15,
                                                    width: 15,
                                                  ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _selectedRadio2 = 2;
                                      });
                                    },
                                    child: Container(
                                      height: getProportionateScreenHeight(51),
                                      width: getProportionateScreenWidth(90),
                                      color: Color(0xFFEAF3FA),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            'Commercial',
                                            style: TextStyle(
                                              color: Color(0xFF484D61),
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      11),
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Center(
                                            child: _selectedRadio2 == 2
                                                ? SvgPicture.asset(
                                                    "assets/images/radio_selected_icon.svg",
                                                    height: 30,
                                                    width: 30,
                                                  )
                                                : SvgPicture.asset(
                                                    "assets/images/radio_unselected_icon.svg",
                                                    height: 15,
                                                    width: 15,
                                                  ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(51),
                                    width: getProportionateScreenWidth(90),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // SizedBox(height: getProportionateScreenHeight(20)),
                          Image.asset(
                            "assets/images/property_type_card.png",
                            height: getProportionateScreenHeight(500),
                          ),
                          SizedBox(height: getProportionateScreenHeight(20)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Where is your property located?',
                                style: TextStyle(
                                  color: Color(0xFF484D61),
                                  fontSize: getProportionateScreenWidth(13),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(
                                  SizeConfig.screenHeight * 0.02,
                                ),
                              ),
                              Container(
                                height: getProportionateScreenHeight(52),
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        getProportionateScreenWidth(20)),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Color(0xFFB3DDE8),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                      bottom: getProportionateScreenHeight(10),
                                    ),
                                    hintText: "Enter City",
                                    hintStyle: TextStyle(
                                      color: Color(0xFFB9C8D4),
                                      fontWeight: FontWeight.w400,
                                      fontSize: getProportionateScreenWidth(13),
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              SizedBox(
                                  height: getProportionateScreenHeight(20)),
                              Container(
                                height: getProportionateScreenHeight(52),
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        getProportionateScreenWidth(20)),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Color(0xFFB3DDE8),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                      bottom: getProportionateScreenHeight(10),
                                    ),
                                    hintText:
                                        "Enter Project/Society or Locality",
                                    hintStyle: TextStyle(
                                      color: Color(0xFFB9C8D4),
                                      fontWeight: FontWeight.w400,
                                      fontSize: getProportionateScreenWidth(13),
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              SizedBox(
                                  height: getProportionateScreenHeight(20)),
                              Text(
                                'What is your property configuration?',
                                style: TextStyle(
                                  color: Color(0xFF484D61),
                                  fontSize: getProportionateScreenWidth(13),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                  height: getProportionateScreenHeight(20)),
                              Image.asset("assets/images/unit_type_image.png"),
                            ],
                          ),
                          SizedBox(height: getProportionateScreenHeight(20)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bathroom",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                  height: getProportionateScreenHeight(20)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 33.56,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
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
                              SizedBox(
                                  height: getProportionateScreenHeight(20)),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Balcony",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                  height: getProportionateScreenHeight(20)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 33.56,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
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
                              SizedBox(
                                  height: getProportionateScreenHeight(40)),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                  "assets/images/floor_detail_image.png"),
                              SizedBox(
                                  height: getProportionateScreenHeight(20)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: getProportionateScreenHeight(52),
                                    width: getProportionateScreenWidth(150),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        color: Color(0xFFB3DDE8),
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Total Floor of Building',
                                      style: TextStyle(
                                        color: Color(0xFFB9C8D4),
                                        fontSize:
                                            getProportionateScreenWidth(13),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: getProportionateScreenHeight(52),
                                    width: getProportionateScreenWidth(150),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        color: Color(0xFFB3DDE8),
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Floor no of property',
                                      style: TextStyle(
                                        color: Color(0xFFB9C8D4),
                                        fontSize:
                                            getProportionateScreenWidth(13),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: getProportionateScreenHeight(20)),
                          Column(
                            children: [
                              Image.asset("assets/images/furnished_image.png"),
                              SizedBox(
                                  height: getProportionateScreenHeight(20)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _selectedRadio2 = 1;
                                      });
                                    },
                                    child: Container(
                                      height: getProportionateScreenHeight(51),
                                      width: getProportionateScreenWidth(130),
                                      color: Color(0xFFEAF3FA),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            'Furnished',
                                            style: TextStyle(
                                              color: Color(0xFF484D61),
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      11),
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Center(
                                            child: _selectedRadio2 == 1
                                                ? SvgPicture.asset(
                                                    "assets/images/radio_selected_icon.svg",
                                                    height: 30,
                                                    width: 30,
                                                  )
                                                : SvgPicture.asset(
                                                    "assets/images/radio_unselected_icon.svg",
                                                    height: 15,
                                                    width: 15,
                                                  ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _selectedRadio2 = 2;
                                      });
                                    },
                                    child: Container(
                                      height: getProportionateScreenHeight(51),
                                      width: getProportionateScreenWidth(130),
                                      color: Color(0xFFEAF3FA),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            'Semi-Furnished',
                                            style: TextStyle(
                                              color: Color(0xFF484D61),
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      11),
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Center(
                                            child: _selectedRadio2 == 2
                                                ? SvgPicture.asset(
                                                    "assets/images/radio_selected_icon.svg",
                                                    height: 30,
                                                    width: 30,
                                                  )
                                                : SvgPicture.asset(
                                                    "assets/images/radio_unselected_icon.svg",
                                                    height: 15,
                                                    width: 15,
                                                  ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(51),
                                    width: getProportionateScreenWidth(20),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: getProportionateScreenHeight(20)),
                          Column(
                            children: [
                              Image.asset(
                                  "assets/images/property_area_head_image.png"),
                              SizedBox(
                                  height: getProportionateScreenHeight(20)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: getProportionateScreenHeight(52),
                                    width: getProportionateScreenWidth(150),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        color: Color(0xFFB3DDE8),
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Total Floor of Building',
                                      style: TextStyle(
                                        color: Color(0xFFB9C8D4),
                                        fontSize:
                                            getProportionateScreenWidth(13),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: getProportionateScreenHeight(52),
                                    width: getProportionateScreenWidth(150),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        color: Color(0xFFB3DDE8),
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Floor no of property',
                                      style: TextStyle(
                                        color: Color(0xFFB9C8D4),
                                        fontSize:
                                            getProportionateScreenWidth(13),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                  height: getProportionateScreenHeight(20)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: getProportionateScreenHeight(52),
                                    width: getProportionateScreenWidth(150),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        color: Color(0xFFB3DDE8),
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Total Floor of Building',
                                      style: TextStyle(
                                        color: Color(0xFFB9C8D4),
                                        fontSize:
                                            getProportionateScreenWidth(13),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: getProportionateScreenHeight(52),
                                    width: getProportionateScreenWidth(150),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        color: Color(0xFFB3DDE8),
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Floor no of property',
                                      style: TextStyle(
                                        color: Color(0xFFB9C8D4),
                                        fontSize:
                                            getProportionateScreenWidth(13),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: getProportionateScreenHeight(20)),
                          Container(
                            height: 46,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            margin: EdgeInsets.symmetric(horizontal: 80),
                            decoration: BoxDecoration(
                              color: Color(0xFFEA4C89),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Apply",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: getProportionateScreenHeight(20)),
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
