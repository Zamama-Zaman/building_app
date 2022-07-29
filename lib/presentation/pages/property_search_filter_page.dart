// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_tor_app/presentation/pages/advance_filters_page.dart';
import 'package:real_tor_app/presentation/widgets/app_bar_widget.dart';
import 'package:real_tor_app/size_config.dart';

import '../../constants.dart';

class PropertySearchFilterPage extends StatefulWidget {
  const PropertySearchFilterPage({Key? key}) : super(key: key);

  @override
  State<PropertySearchFilterPage> createState() =>
      _PropertySearchFilterPageState();
}

class _PropertySearchFilterPageState extends State<PropertySearchFilterPage> {
  static double _lowerValue = 1.0;
  static double _upperValue = 100.0;
  RangeValues values = RangeValues(20, 60);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.kPrimaryColor,
      appBar: appBarWidget2(
        () {
          Navigator.pop(context);
        },
        "Property Search Filters",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(50),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenHeight(30)),
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
                      SizedBox(height: getProportionateScreenHeight(50)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "I'm looking for...",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(16),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Image.asset(
                            "assets/images/buy_property_button.png",
                            width: 94,
                            height: 31,
                          ),
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(40)),
                      Row(
                        children: [
                          Center(
                            child: SvgPicture.asset(
                              "assets/images/home_icon_loaction.svg",
                              width: 32,
                              height: 30,
                            ),
                          ),
                          Spacer(),
                          Container(
                            // height: 27,
                            // width: 310,
                            height: getProportionateScreenHeight(30),
                            width: getProportionateScreenWidth(285),
                            color: Colors.transparent,
                            child: Text(
                              "Fill in some basic information, so can match you with your perfect place",
                              style: TextStyle(
                                fontSize: getProportionateScreenWidth(11),
                                color: Color(0xFF889399),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(40)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 32,
                            width: 103,
                            decoration: BoxDecoration(
                              color: Color(0xFF5ADCA5).withOpacity(.5),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Filter (52)",
                              style: TextStyle(
                                color: Color(0xFF2B9367),
                              ),
                            ),
                          ),
                          Text(
                            "Clear all",
                            style: TextStyle(
                              color: Color(0xFFFF6842),
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(40)),
                      Text(
                        "Property type",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(40)),
                      SizedBox(
                        height: 71,
                        width: 343,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: propertyTypeList.length,
                          itemBuilder: (context, index) => Container(
                            height: 71,
                            width: 60,
                            margin: EdgeInsets.only(
                                right: getProportionateScreenWidth(31)),
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEAF3FA),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      propertyTypeList[index].icon,
                                      width: 25,
                                      height: 25,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  propertyTypeList[index].name,
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(40)),
                      Text(
                        "Bedroom",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(40)),
                      Row(
                        children: [
                          ...List.generate(
                            4,
                            (index) {
                              return Container(
                                height: getProportionateScreenHeight(32),
                                width: getProportionateScreenWidth(64.6),
                                margin: EdgeInsets.only(
                                    right: getProportionateScreenWidth(16)),
                                decoration: BoxDecoration(
                                  color: Color(0xFFEAF3FA),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "${index + 1} BHK",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF484D61),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(40)),
                      Text(
                        "Budget",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(20)),
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Text(
                              "Max",
                              style: TextStyle(
                                color: Color(0xFFAAAAAA),
                              ),
                            ),
                            Expanded(
                              child: SliderTheme(
                                data: SliderThemeData(
                                  thumbColor: Colors.green,
                                  rangeThumbShape: RoundRangeSliderThumbShape(
                                      enabledThumbRadius: 7),
                                  overlayShape: RoundSliderOverlayShape(
                                      overlayRadius: 30),
                                  trackHeight: 3,
                                ),
                                child: RangeSlider(
                                    activeColor: Color(0xFF3E67D6),
                                    inactiveColor: Color(0xFF979797),
                                    divisions: 100,
                                    labels: RangeLabels(
                                      values.start.round().toString(),
                                      values.end.round().toString(),
                                    ),
                                    min: _lowerValue,
                                    max: _upperValue,
                                    values: values,
                                    onChanged: (val) {
                                      setState(() {
                                        values = val;
                                      });
                                    }),
                              ),
                            ),
                            Text(
                              "Min",
                              style: TextStyle(
                                color: Color(0xFFAAAAAA),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(40)),
                      Text(
                        "Type",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(40)),
                      Row(
                        children: [
                          Container(
                            height: 33.56,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF3FA),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Furnished",
                              style: TextStyle(
                                color: Color(0xFF484D61),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 33.56,
                            // width: 102.56,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF3FA),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Semi-furnished",
                              style: TextStyle(
                                color: Color(0xFF484D61),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(40)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 46,
                            padding: EdgeInsets.symmetric(horizontal: 40),
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
                          SizedBox(width: getProportionateScreenWidth(30)),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AdvanceFilterPage(),
                                ),
                              );
                            },
                            child: Text(
                              "Advanced Search",
                              style: TextStyle(
                                color: Color(0xFF3E67D6),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(40)),
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

class PropertyTypeClass {
  final String name;
  final String icon;

  PropertyTypeClass(this.name, this.icon);
}

List<PropertyTypeClass> propertyTypeList = [
  PropertyTypeClass("Apartment", "assets/images/apartment_icon.svg"),
  PropertyTypeClass("Flat", "assets/images/flat_icon.svg"),
  PropertyTypeClass("House/Villas", "assets/images/house_villas_icon.svg"),
  PropertyTypeClass("PG/Hostel", "assets/images/pg_hostel.svg"),
];
