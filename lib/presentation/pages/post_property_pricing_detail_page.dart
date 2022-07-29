// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../../size_config.dart';

class PostPropertyPricingDetailPage extends StatefulWidget {
  const PostPropertyPricingDetailPage({Key? key}) : super(key: key);

  @override
  State<PostPropertyPricingDetailPage> createState() =>
      _PostPropertyPricingDetailPageState();
}

class _PostPropertyPricingDetailPageState
    extends State<PostPropertyPricingDetailPage> {
  int _selectedRadio = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.kPrimaryColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Constant.kPrimaryColor,
        title: Text(
          "Pricing / Pictures Detail",
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
                            width: (SizeConfig.screenWidth * 0.04),
                          ),
                          SvgPicture.asset(
                            "assets/images/personal_details_icon.svg",
                          ),
                          SizedBox(
                            width: (SizeConfig.screenWidth * 0.01),
                          ),
                          SvgPicture.asset(
                            "assets/images/horizontal_divider_icon.svg",
                            width: SizeConfig.screenWidth * 0.15,
                          ),
                          SizedBox(
                            width: (SizeConfig.screenWidth * 0.01),
                          ),
                          SvgPicture.asset(
                            "assets/images/property_detail_second_icon.svg",
                          ),
                          SizedBox(
                            width: (SizeConfig.screenWidth * 0.01),
                          ),
                          SvgPicture.asset(
                            "assets/images/horizontal_divider_icon.svg",
                            width: SizeConfig.screenWidth * 0.15,
                          ),
                          SizedBox(
                            width: (SizeConfig.screenWidth * 0.01),
                          ),
                          SvgPicture.asset(
                            "assets/images/pricing_detail_second_icon.svg",
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
                              Image.asset(
                                "assets/images/dollar_image.png",
                                width: 74,
                                height: 74,
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(
                                  SizeConfig.screenWidth * 0.08,
                                ),
                              ),
                              Text(
                                'Price you Expect',
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
                                'Enter Expected Price',
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
                                        SizeConfig.screenWidth * 0.04,
                                      ),
                                    ),
                                    Text(
                                      '\$',
                                      style: TextStyle(
                                        color: Color(0xFF747A92),
                                        fontSize:
                                            getProportionateScreenWidth(14),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      width: getProportionateScreenWidth(
                                        SizeConfig.screenWidth * 0.04,
                                      ),
                                    ),
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                              bottom:
                                                  getProportionateScreenHeight(
                                                      10)),
                                          hintText: "55,00,200",
                                          hintStyle: TextStyle(
                                            color: Color(0xFFB9C8D4),
                                            fontSize:
                                                getProportionateScreenWidth(13),
                                          ),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: getProportionateScreenHeight(20)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Enter Expected Token Price',
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
                                        SizeConfig.screenWidth * 0.04,
                                      ),
                                    ),
                                    Text(
                                      '\$',
                                      style: TextStyle(
                                        color: Color(0xFF747A92),
                                        fontSize:
                                            getProportionateScreenWidth(14),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      width: getProportionateScreenWidth(
                                        SizeConfig.screenWidth * 0.04,
                                      ),
                                    ),
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                              bottom:
                                                  getProportionateScreenHeight(
                                                      10)),
                                          hintText: "55,00,200",
                                          hintStyle: TextStyle(
                                            color: Color(0xFFB9C8D4),
                                            fontSize:
                                                getProportionateScreenWidth(13),
                                          ),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: getProportionateScreenHeight(20)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                          SizedBox(height: getProportionateScreenHeight(40)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Upload Image',
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
                              Text(
                                'Authoritatively orchestrate ethical leadership whereas cost effective mindshare',
                                style: TextStyle(
                                  color: Color(0xFF758FA4),
                                  fontSize: getProportionateScreenWidth(10),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(
                                  SizeConfig.screenHeight * 0.1,
                                ),
                              ),
                              SvgPicture.asset(
                                  "assets/images/add_photo_or_vidoe_icon.svg"),
                              SizedBox(
                                height: getProportionateScreenHeight(
                                  SizeConfig.screenHeight * 0.1,
                                ),
                              ),
                              Container(
                                height: 46,
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                margin: EdgeInsets.symmetric(horizontal: 50),
                                decoration: BoxDecoration(
                                  color: Color(0xFFEA4C89),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "Upload your property",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
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
