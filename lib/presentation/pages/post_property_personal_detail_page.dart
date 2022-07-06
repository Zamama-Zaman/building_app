// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../../size_config.dart';

class PostPropertyPersonalDetailPage extends StatefulWidget {
  const PostPropertyPersonalDetailPage({Key? key}) : super(key: key);

  @override
  State<PostPropertyPersonalDetailPage> createState() =>
      _PostPropertyPersonalDetailPageState();
}

class _PostPropertyPersonalDetailPageState
    extends State<PostPropertyPersonalDetailPage> {
  int _selectedRadio = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.kPrimaryColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Constant.kPrimaryColor,
        title: Text(
          "Personal Detail",
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
                              SizeConfig.screenWidth * 0.04,
                            ),
                          ),
                          SvgPicture.asset(
                            "assets/images/property_detail_first_icon.svg",
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(
                              SizeConfig.screenWidth * 0.3,
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
                                'Let’s start by knowing you\nbetter...',
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
                                'I am',
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
                                            'Owner',
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
                                            'Agent',
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
                                            'Builder',
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
                                'Enter your contact details',
                                style: TextStyle(
                                  color: Color(0xFF484D61),
                                  fontSize: getProportionateScreenWidth(13),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                  height: getProportionateScreenHeight(20)),
                              Container(
                                height: getProportionateScreenHeight(52),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Color(0xFFB3DDE8),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: getProportionateScreenWidth(
                                        SizeConfig.screenWidth * 0.02,
                                      ),
                                    ),
                                    SvgPicture.asset(
                                      "assets/images/american_flat_icon.svg",
                                    ),
                                    SizedBox(
                                      width: getProportionateScreenWidth(
                                        SizeConfig.screenWidth * 0.02,
                                      ),
                                    ),
                                    Text(
                                      "+1",
                                      style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(12),
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF747A92),
                                      ),
                                    ),
                                    SizedBox(
                                      width: getProportionateScreenWidth(
                                        SizeConfig.screenWidth * 0.06,
                                      ),
                                    ),
                                    Text(
                                      "Mobile Number",
                                      style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(13),
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFFB9C8D5),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(
                                  SizeConfig.screenHeight * 0.02,
                                ),
                              ),
                              Text(
                                'Dynamically syndicate tactical systems rather than out-of-the-box partnerships.',
                                style: TextStyle(
                                  color: Color(0xFF758FA4),
                                  fontSize: getProportionateScreenWidth(10),
                                  fontWeight: FontWeight.w400,
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
                              Image.asset(
                                  "assets/images/post_property_card_image.png"),
                            ],
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
