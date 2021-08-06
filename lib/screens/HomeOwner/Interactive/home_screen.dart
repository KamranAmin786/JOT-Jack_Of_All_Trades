import 'package:flutter/material.dart';
import 'package:fyp/constants.dart';
import 'package:fyp/components/featured_items.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: kHomeContainerColor,
                  borderRadius: kHomeContainerStyle,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 50.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "text25".tr().toString(),
                        style: kHomeScreenHeadings,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        onChanged: (value) {
                          //Do something with the user input.
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "text26".tr().toString(),
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "text27".tr().toString(),
                        style: kHomeScreenHeadings,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
              // Upper Container
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          height: 180.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              FeaturedServices(
                                name: "text28".tr().toString(),
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: "text29".tr().toString(),
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: "text30".tr().toString(),
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: "text31".tr().toString(),
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: "text32".tr().toString(),
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: "text33".tr().toString(),
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          height: 180.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              FeaturedServices(
                                name: "text34".tr().toString(),
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: "text35".tr().toString(),
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: "text36".tr().toString(),
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: "text37".tr().toString(),
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: "text38".tr().toString(),
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: "text39".tr().toString(),
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          height: 180.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              FeaturedServices(
                                name: "text4".tr().toString(),
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: "text4".tr().toString(),
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: "text4".tr().toString(),
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: "text4".tr().toString(),
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: "text4".tr().toString(),
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: "text4".tr().toString(),
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                            ],
                          ),
                        ),
                      ],
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
}
