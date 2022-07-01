// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostPropertyStartPage extends StatelessWidget {
  const PostPropertyStartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          padding: EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  "assets/images/post_property_start_background.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 120),
              Text(
                "Sell or Rent \nYour property",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Distinctively generate orthogonal catalysts for change \nthrough high-quality imperatives.",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFFBAD1F2),
                ),
              ),
              SizedBox(height: 40),
              Text(
                "You are posting this property for",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset(
                    "assets/images/20_dollar_image.png",
                    width: 28,
                    height: 27,
                  ),
                  SizedBox(width: 20),
                  SvgPicture.asset(
                    "assets/images/free_icon.svg",
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 3),
                    child: SvgPicture.asset(
                      "assets/images/tic_icon.svg",
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Interactively foster distinctive products through \nresource maximizing imperatives.",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFBAD1F2),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 3),
                    child: SvgPicture.asset(
                      "assets/images/tic_icon.svg",
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Rapidiously negotiate one-to-one e-commerce via \nbricks-and-clicks internal or "organic" sources.',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFBAD1F2),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 3),
                    child: SvgPicture.asset(
                      "assets/images/tic_icon.svg",
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Enthusiastically whiteboard sticky technology before \nscalable supply chains.",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFBAD1F2),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Center(
                child: Container(
                  width: 295,
                  height: 66,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Get Started",
                        style: TextStyle(
                          color: Color(0xFFBAD1F2),
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/images/long_arrow_forward_icon.svg",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
