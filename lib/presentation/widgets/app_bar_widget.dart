// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_tor_app/constants.dart';

PreferredSize appBarWidget() {
  return PreferredSize(
    preferredSize: const Size(414, 219),
    child: Container(
      height: 414,
      width: 219,
      color: Constant.kPrimaryColor,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 26,
              width: 379.17,
              color: Colors.transparent,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Constant.kWhiteColor,
                  ),
                  Text(
                    "MyProfile",
                    style: TextStyle(
                      color: Constant.kWhiteColor,
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Constant.kWhiteColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

AppBar appBarWidget2(Function func, String title) {
  return AppBar(
    elevation: 0.0,
    backgroundColor: Constant.kPrimaryColor,
    title: Text(
      title,
      style: TextStyle(
        color: Constant.kWhiteColor,
      ),
    ),
    centerTitle: true,
    leading: IconButton(
      onPressed: () => func(),
      icon: SvgPicture.asset("assets/images/arrow_back_icon.svg"),
    ),
    actions: [
      IconButton(
        onPressed: null,
        icon: SvgPicture.asset("assets/images/search_icon.svg"),
      ),
    ],
  );
}
