// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_tor_app/presentation/data/firebase_repository.dart';
import 'package:real_tor_app/presentation/pages/default_page.dart';
import 'package:real_tor_app/presentation/pages/home_page.dart';
import 'package:real_tor_app/size_config.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isSelected = false;
  bool isShowPass = true;

  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: screenHeight,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/background_image.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    height: screenHeight,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(40),
                    ),
                    // alignment: Alignment.center,
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: getProportionateScreenHeight(180)),
                        Container(
                          width: double.infinity,
                          height: getProportionateScreenHeight(118),
                          color: Colors.transparent,
                          child: Text(
                            "Welcome Back",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(45),
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Material(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(5),
                              elevation: 1.0,
                              child: Container(
                                height: getProportionateScreenHeight(49),
                                width: getProportionateScreenWidth(143),
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        getProportionateScreenWidth(10)),
                                decoration: BoxDecoration(
                                  color: Color(0xFF4869D4),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/images/facebook_icon.svg",
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "Sign in with Facebook",
                                      style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(10),
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Material(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(5),
                              elevation: 1.0,
                              child: Container(
                                height: getProportionateScreenHeight(49),
                                width: getProportionateScreenWidth(143),
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        getProportionateScreenWidth(13)),
                                decoration: BoxDecoration(
                                  color: Color(0xFFEB4132),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/images/google_icon.svg",
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "Sign in with Google",
                                      style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(10),
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 65,
                          width: 282,
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email",
                                style: TextStyle(
                                  color: Color(0xFFEAF3FA),
                                ),
                              ),
                              TextFormField(
                                controller: _emailController,
                                style: TextStyle(
                                  color: Color(0xFFEAF3FA),
                                ),
                                decoration: InputDecoration(
                                  hintText: "demo@gmail.com",
                                  hintStyle: TextStyle(
                                    color: Color(0xFFEAF3FA),
                                  ),
                                  // enabledBorder: InputBorder.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 65,
                          width: 282,
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Password",
                                style: TextStyle(
                                  color: Color(0xFFEAF3FA),
                                ),
                              ),
                              TextFormField(
                                controller: _passwordController,
                                style: TextStyle(
                                  color: Color(0xFFEAF3FA),
                                ),
                                obscureText: isShowPass,
                                decoration: InputDecoration(
                                  hintText: "password here",
                                  suffixIcon: InkWell(
                                    onTap: () {
                                      setState(() {
                                        isShowPass = !isShowPass;
                                      });
                                    },
                                    child: Icon(
                                      isShowPass
                                          ? Icons.remove_red_eye
                                          : Icons.remove_red_eye_outlined,
                                      size: 20,
                                      color: Color(0xFFEAF3FA),
                                    ),
                                  ),
                                  hintStyle: TextStyle(
                                    color: Color(0xFFEAF3FA),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Checkbox(
                              value: isSelected,
                              onChanged: (val) {
                                setState(() {
                                  isSelected = val!;
                                });
                              },
                              activeColor: Colors.yellow,
                              side: BorderSide(
                                color: Colors.yellow,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            Text(
                              "Remember me",
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 12,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () => _signIn(),
                                child: Container(
                                  height: 46,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                      color: Colors.white,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Sign In",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                height: 16,
                                width: 200,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Text(
                                      "Don’t have an account?",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      " Sign Up",
                                      style: TextStyle(
                                        color: Color(0xFF9DBDFC),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future _signIn() async {
    if (_emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      bool check = await FirebaseHelper().loginWithEmailAndPassword(
        _emailController.text.toString(),
        _passwordController.text.toString(),
      );
      if (!check) {
        SnackBar snack = SnackBar(
          content: Text("Invalid User Credentials"),
        );
        ScaffoldMessenger.of(context).showSnackBar(snack);
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DefaultPage(),
          ),
        );
      }
    } else {
      SnackBar snack = SnackBar(
        content: Text("Email And Password Field is Empty"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snack);
    }
  }
}
