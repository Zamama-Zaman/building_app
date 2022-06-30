// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bubble/bubble.dart';

import '../../constants.dart';

class ConversationPage extends StatelessWidget {
  const ConversationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.kPrimaryColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Constant.kPrimaryColor,
        title: Text(
          "Conversations",
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
                    children: [
                      SizedBox(height: 20),
                      Container(
                        height: 66,
                        width: double.infinity,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Online",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Jessica Parker",
                                  style: TextStyle(
                                    color: Color(0xFF0986E2),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
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
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ...List.generate(
                        message.length,
                        (index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: message[index].mainAxis,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    margin: const EdgeInsets.all(3),
                                    child: Column(
                                      crossAxisAlignment:
                                          message[index].timeAlign,
                                      children: [
                                        Bubble(
                                          color: message[index].color,
                                          // elevation: 0.0,
                                          margin: BubbleEdges.only(top: 10),
                                          nip: message[index].nip,
                                          nipWidth: 2,
                                          nipHeight: 10,
                                          child: Column(
                                            crossAxisAlignment:
                                                message[index].crossAxis,
                                            children: [
                                              SizedBox(height: 10),
                                              ConstrainedBox(
                                                constraints:
                                                    const BoxConstraints(
                                                        maxWidth: 250),
                                                child: Text(
                                                  "${message[index].message}    ",
                                                  textAlign: TextAlign.left,
                                                  style: const TextStyle(
                                                      fontSize: 18),
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "8:20 am",
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      ),
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

// mainAxisAlignment.start // Row
// nip: BubbleNip.leftTop
// crossAxisAlignment.start // Column
// textAlign.center,

class Message {
  final MainAxisAlignment mainAxis;
  final BubbleNip nip;
  final CrossAxisAlignment crossAxis;
  final CrossAxisAlignment timeAlign;
  final TextAlign textAlign;
  final String message;
  final Color color;

  Message({
    required this.mainAxis,
    required this.nip,
    required this.crossAxis,
    required this.timeAlign,
    required this.textAlign,
    required this.message,
    required this.color,
  });
}

// color: Color(0xFFEBFDFF), left
// color: Color(0xFFDFF1FF), right

List<Message> message = [
  Message(
    mainAxis: MainAxisAlignment.start,
    nip: BubbleNip.leftTop,
    crossAxis: CrossAxisAlignment.start,
    timeAlign: CrossAxisAlignment.start,
    textAlign: TextAlign.left,
    message: "Hello!",
    color: Color(0xFFEBFDFF),
  ),
  Message(
    mainAxis: MainAxisAlignment.start,
    nip: BubbleNip.leftTop,
    crossAxis: CrossAxisAlignment.start,
    timeAlign: CrossAxisAlignment.start,
    textAlign: TextAlign.left,
    message: "How your life is going?",
    color: Color(0xFFEBFDFF),
  ),
  Message(
    mainAxis: MainAxisAlignment.end,
    nip: BubbleNip.rightTop,
    crossAxis: CrossAxisAlignment.end,
    timeAlign: CrossAxisAlignment.end,
    textAlign: TextAlign.right,
    message: "Perfect!",
    color: Color(0xFFDFF1FF),
  ),
  Message(
    mainAxis: MainAxisAlignment.end,
    nip: BubbleNip.rightTop,
    crossAxis: CrossAxisAlignment.end,
    timeAlign: CrossAxisAlignment.end,
    textAlign: TextAlign.right,
    message: "What about you?",
    color: Color(0xFFDFF1FF),
  ),
  Message(
    mainAxis: MainAxisAlignment.start,
    nip: BubbleNip.leftTop,
    crossAxis: CrossAxisAlignment.start,
    timeAlign: CrossAxisAlignment.start,
    textAlign: TextAlign.center,
    message: "Not a good...",
    color: Color(0xFFEBFDFF),
  ),
  Message(
    mainAxis: MainAxisAlignment.start,
    nip: BubbleNip.leftTop,
    crossAxis: CrossAxisAlignment.start,
    timeAlign: CrossAxisAlignment.start,
    textAlign: TextAlign.center,
    message: "Dramatically reconceptualize multimedia",
    color: Color(0xFFEBFDFF),
  ),
  Message(
    mainAxis: MainAxisAlignment.end,
    nip: BubbleNip.rightTop,
    crossAxis: CrossAxisAlignment.end,
    timeAlign: CrossAxisAlignment.end,
    textAlign: TextAlign.right,
    message: "Assertively restore",
    color: Color(0xFFDFF1FF),
  ),
  Message(
    mainAxis: MainAxisAlignment.end,
    nip: BubbleNip.rightTop,
    crossAxis: CrossAxisAlignment.end,
    timeAlign: CrossAxisAlignment.end,
    textAlign: TextAlign.right,
    message:
        "Uniquely simplify functional quality vectors through standards compliant web services.",
    color: Color(0xFFDFF1FF),
  ),
];
