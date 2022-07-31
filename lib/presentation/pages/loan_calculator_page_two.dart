// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_tor_app/presentation/pages/loan_bank_details_page.dart';

import '../../constants.dart';
import '../../size_config.dart';

class LoanCalculatorPageTwo extends StatelessWidget {
  const LoanCalculatorPageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.kPrimaryColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Constant.kPrimaryColor,
        title: Text(
          "Loan Calculators",
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Container(
                        height: 66,
                        width: double.infinity,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 66,
                              width: 66,
                              decoration: BoxDecoration(
                                color: Constant.kTextGreyWhiteColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade300,
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: Offset(
                                      0,
                                      3,
                                    ), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Amount",
                                  style: TextStyle(
                                    fontSize: getProportionateScreenWidth(17),
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF484D61),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "\$ 2,4460,000",
                                  style: TextStyle(
                                    fontSize: getProportionateScreenWidth(17),
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF0986E2),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: SizeConfig.screenHeight * 0.04),

                      /// Loan Amount (lakhs)
                      Text(
                        "Loan Amount (lakhs)",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(13),
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF484D61),
                        ),
                      ),
                      SizedBox(height: SizeConfig.screenHeight * 0.02),
                      Container(
                        height: getProportionateScreenHeight(90),
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(10),
                          vertical: getProportionateScreenHeight(5),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: Offset(
                                0,
                                3,
                              ), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Min',
                                  style: TextStyle(
                                    color: Color(0xFFAAAAAA),
                                    fontSize: getProportionateScreenWidth(14),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          height:
                                              SizeConfig.screenHeight * 0.01,
                                        ),
                                        Text(
                                          'Years',
                                          style: TextStyle(
                                            color: Color(0xFF484D61),
                                            fontSize:
                                                getProportionateScreenWidth(14),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SvgPicture.asset(
                                          "assets/images/triangle_arrow_down_icon.svg",
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: SizeConfig.screenWidth * 0.15,
                                    ),
                                  ],
                                ),
                                Text(
                                  'Min',
                                  style: TextStyle(
                                    color: Color(0xFFAAAAAA),
                                    fontSize: getProportionateScreenWidth(14),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            SizedBox(
                              height: 32,
                              width: double.infinity,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: 6,
                                itemBuilder: (context, index) {
                                  if (index == 2) {
                                    return Container(
                                      height: 32,
                                      width: 45,
                                      margin: EdgeInsets.only(
                                        right: getProportionateScreenWidth(12),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(0xFF0986E2),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        '${index + 1}',
                                        style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontSize:
                                              getProportionateScreenWidth(12),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    );
                                  }
                                  if (index == 5) {
                                    return Container(
                                      height: 32,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE7E7E7),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        '${index + 1}',
                                        style: TextStyle(
                                          color: Color(0xFF484D61),
                                          fontSize:
                                              getProportionateScreenWidth(12),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    );
                                  }
                                  return Container(
                                    height: 32,
                                    width: 45,
                                    margin: EdgeInsets.only(
                                      right: getProportionateScreenWidth(12),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE7E7E7),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '${index + 1}',
                                      style: TextStyle(
                                        color: Color(0xFF484D61),
                                        fontSize:
                                            getProportionateScreenWidth(12),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: SizeConfig.screenHeight * 0.04),

                      /// Loan pay (years)
                      Text(
                        "Loan pay (years)",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(13),
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF484D61),
                        ),
                      ),
                      SizedBox(height: SizeConfig.screenHeight * 0.02),
                      Container(
                        height: getProportionateScreenHeight(90),
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(10),
                          vertical: getProportionateScreenHeight(5),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: Offset(
                                0,
                                3,
                              ), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Min',
                                  style: TextStyle(
                                    color: Color(0xFFAAAAAA),
                                    fontSize: getProportionateScreenWidth(14),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          height:
                                              SizeConfig.screenHeight * 0.01,
                                        ),
                                        Text(
                                          'Years',
                                          style: TextStyle(
                                            color: Color(0xFF484D61),
                                            fontSize:
                                                getProportionateScreenWidth(14),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SvgPicture.asset(
                                          "assets/images/triangle_arrow_down_icon.svg",
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: SizeConfig.screenWidth * 0.15,
                                    ),
                                  ],
                                ),
                                Text(
                                  'Min',
                                  style: TextStyle(
                                    color: Color(0xFFAAAAAA),
                                    fontSize: getProportionateScreenWidth(14),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            SizedBox(
                              height: 32,
                              width: double.infinity,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: 6,
                                itemBuilder: (context, index) {
                                  if (index == 2) {
                                    return Container(
                                      height: 32,
                                      width: 45,
                                      margin: EdgeInsets.only(
                                        right: getProportionateScreenWidth(12),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(0xFF0986E2),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        '${index + 1}',
                                        style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontSize:
                                              getProportionateScreenWidth(12),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    );
                                  }
                                  if (index == 5) {
                                    return Container(
                                      height: 32,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE7E7E7),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        '${index + 1}',
                                        style: TextStyle(
                                          color: Color(0xFF484D61),
                                          fontSize:
                                              getProportionateScreenWidth(12),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    );
                                  }
                                  return Container(
                                    height: 32,
                                    width: 45,
                                    margin: EdgeInsets.only(
                                      right: getProportionateScreenWidth(12),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE7E7E7),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '${index + 1}',
                                      style: TextStyle(
                                        color: Color(0xFF484D61),
                                        fontSize:
                                            getProportionateScreenWidth(12),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: SizeConfig.screenHeight * 0.04),

                      /// Interest Rate
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Interest Rate",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(13),
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF484D61),
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/images/edit_icon (2).svg",
                                color: Color(0xFFFF4242),
                              ),
                              SizedBox(width: SizeConfig.screenWidth * 0.02),
                              Text(
                                "Select Bank",
                                style: TextStyle(
                                  fontSize: getProportionateScreenWidth(11),
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFAAAAAA),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: SizeConfig.screenHeight * 0.02),
                      Container(
                        height: getProportionateScreenHeight(90),
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(10),
                          vertical: getProportionateScreenHeight(5),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: Offset(
                                0,
                                3,
                              ), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Min',
                                  style: TextStyle(
                                    color: Color(0xFFAAAAAA),
                                    fontSize: getProportionateScreenWidth(14),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          height:
                                              SizeConfig.screenHeight * 0.01,
                                        ),
                                        Text(
                                          'Years',
                                          style: TextStyle(
                                            color: Color(0xFF484D61),
                                            fontSize:
                                                getProportionateScreenWidth(14),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SvgPicture.asset(
                                          "assets/images/triangle_arrow_down_icon.svg",
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: SizeConfig.screenWidth * 0.15,
                                    ),
                                  ],
                                ),
                                Text(
                                  'Min',
                                  style: TextStyle(
                                    color: Color(0xFFAAAAAA),
                                    fontSize: getProportionateScreenWidth(14),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            SizedBox(
                              height: 32,
                              width: double.infinity,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: 6,
                                itemBuilder: (context, index) {
                                  if (index == 2) {
                                    return Container(
                                      height: 32,
                                      width: 45,
                                      margin: EdgeInsets.only(
                                        right: getProportionateScreenWidth(12),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(0xFF0986E2),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        '${index + 1}',
                                        style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontSize:
                                              getProportionateScreenWidth(12),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    );
                                  }
                                  if (index == 5) {
                                    return Container(
                                      height: 32,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE7E7E7),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        '${index + 1}',
                                        style: TextStyle(
                                          color: Color(0xFF484D61),
                                          fontSize:
                                              getProportionateScreenWidth(12),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    );
                                  }
                                  return Container(
                                    height: 32,
                                    width: 45,
                                    margin: EdgeInsets.only(
                                      right: getProportionateScreenWidth(12),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE7E7E7),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '${index + 1}',
                                      style: TextStyle(
                                        color: Color(0xFF484D61),
                                        fontSize:
                                            getProportionateScreenWidth(12),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: SizeConfig.screenHeight * 0.04),

                      /// EMI Type
                      Text(
                        "EMI Type",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(13),
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF484D61),
                        ),
                      ),
                      SizedBox(height: SizeConfig.screenHeight * 0.04),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: getProportionateScreenHeight(46),
                            padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(40),
                            ),
                            // width: getProportionateScreenWidth(175),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: Color(0xFFEA4C89),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "In Advance",
                                  style: TextStyle(
                                    fontSize: getProportionateScreenWidth(13),
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF484D61),
                                  ),
                                ),
                                SizedBox(width: SizeConfig.screenWidth * 0.02),
                                SvgPicture.asset(
                                    "assets/images/check_icon.svg"),
                              ],
                            ),
                          ),
                          Container(
                            height: getProportionateScreenHeight(46),
                            padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(40),
                            ),
                            // width: getProportionateScreenWidth(175),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: Color(0xFFBCBCBE),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "In Arrears",
                              style: TextStyle(
                                fontSize: getProportionateScreenWidth(13),
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF484D61),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: SizeConfig.screenHeight * 0.04),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoanBankDetailPage(),
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
                            "Calculate EMI",
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
