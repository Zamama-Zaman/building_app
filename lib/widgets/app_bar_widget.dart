// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
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
