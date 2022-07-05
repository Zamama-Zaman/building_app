// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_tor_app/size_config.dart';

import '../../constants.dart';

class LoanBankDetailPage extends StatelessWidget {
  const LoanBankDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.kPrimaryColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Constant.kPrimaryColor,
        title: Text(
          "Loan Calculator",
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
                      SizedBox(height: getProportionateScreenHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Other Bank",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(17),
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF484D61),
                            ),
                          ),
                          Text(
                            "Amount",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(17),
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF484D61),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Monthly",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(11),
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF484D61),
                            ),
                          ),
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
                      SizedBox(height: getProportionateScreenHeight(20)),
                      Container(
                        height: getProportionateScreenHeight(402),
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20),
                          vertical: getProportionateScreenHeight(20),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(15),
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: getProportionateScreenWidth(10)),
                                  child: Text(
                                    "Bank",
                                    style: TextStyle(
                                      fontSize: getProportionateScreenWidth(13),
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFC4C4C4),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Interest",
                                  style: TextStyle(
                                    fontSize: getProportionateScreenWidth(13),
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFC4C4C4),
                                  ),
                                ),
                                Text(
                                  "Pay",
                                  style: TextStyle(
                                    fontSize: getProportionateScreenWidth(13),
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFC4C4C4),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: getProportionateScreenHeight(20)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getProportionateScreenWidth(20),
                                  ),
                                  child: Text(
                                    "18%",
                                    style: TextStyle(
                                      fontSize: getProportionateScreenWidth(16),
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF484D61),
                                    ),
                                  ),
                                ),
                                Text(
                                  "\$ 2000",
                                  style: TextStyle(
                                    fontSize: getProportionateScreenWidth(17),
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF0986E2),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: getProportionateScreenHeight(20)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getProportionateScreenWidth(20),
                                  ),
                                  child: Text(
                                    "15%",
                                    style: TextStyle(
                                      fontSize: getProportionateScreenWidth(16),
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF484D61),
                                    ),
                                  ),
                                ),
                                Text(
                                  "\$ 2300",
                                  style: TextStyle(
                                    fontSize: getProportionateScreenWidth(17),
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF0986E2),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: getProportionateScreenHeight(20)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getProportionateScreenWidth(20),
                                  ),
                                  child: Text(
                                    "19%",
                                    style: TextStyle(
                                      fontSize: getProportionateScreenWidth(16),
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF484D61),
                                    ),
                                  ),
                                ),
                                Text(
                                  "\$ 2400",
                                  style: TextStyle(
                                    fontSize: getProportionateScreenWidth(17),
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF0986E2),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: getProportionateScreenHeight(20)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getProportionateScreenWidth(20),
                                  ),
                                  child: Text(
                                    "22%",
                                    style: TextStyle(
                                      fontSize: getProportionateScreenWidth(16),
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF484D61),
                                    ),
                                  ),
                                ),
                                Text(
                                  "\$ 2600",
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
                      SizedBox(height: getProportionateScreenHeight(40)),
                      Text(
                        "Required Documents for Registration",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(16),
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF484D61),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(20)),
                      Container(
                        height: getProportionateScreenHeight(50),
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(30),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xFFFECC6C),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "For Salaried Applicants:",
                              style: TextStyle(
                                color: Color(0xFF484D61),
                                fontSize: getProportionateScreenWidth(13),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Image.asset(
                              "assets/images/forward_button_image.png",
                              width: 6,
                              height: 12,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(20)),
                      Container(
                        height: getProportionateScreenHeight(50),
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(30),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xFFFECC6C),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "For self-employed Individual/Businessman:",
                              style: TextStyle(
                                color: Color(0xFF484D61),
                                fontSize: getProportionateScreenWidth(13),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Image.asset(
                              "assets/images/forward_button_image.png",
                              width: 6,
                              height: 12,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(20)),
                      Container(
                        height: getProportionateScreenHeight(50),
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(30),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xFFFECC6C),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Loan Against Property Details",
                              style: TextStyle(
                                color: Color(0xFF484D61),
                                fontSize: getProportionateScreenWidth(13),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Image.asset(
                              "assets/images/forward_button_image.png",
                              width: 6,
                              height: 12,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(20)),
                      Container(
                        height: getProportionateScreenHeight(50),
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(30),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xFFFECC6C),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "For Salary Application:",
                              style: TextStyle(
                                color: Color(0xFF484D61),
                                fontSize: getProportionateScreenWidth(13),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Image.asset(
                              "assets/images/forward_button_image.png",
                              width: 6,
                              height: 12,
                            ),
                          ],
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
