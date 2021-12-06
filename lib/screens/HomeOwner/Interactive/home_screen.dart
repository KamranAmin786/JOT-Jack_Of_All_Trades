import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp/constants.dart';
import 'package:fyp/components/featured_items.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fyp/services/firebase_services.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final firebaseFirestore = FirebaseFirestore.instance;
  String serviceName;
  String serviceImg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
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
                        'Welcome',
                        style: kHomeScreenHeadings,
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "text25".tr().toString(),
                        style: kHomeScreenHeadings,
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 20.0),
                    //   child: Text(
                    //     "text27".tr().toString(),
                    //     style: kHomeScreenHeadings,
                    //   ),
                    // ),
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
                          child: FutureBuilder(
                              future: firebaseFirestore
                                  .collection("MainServices")
                                  .get(),
                              builder: (context, snapshots) {
                                if (snapshots.hasData) {
                                  final List<DocumentSnapshot> data =
                                      snapshots.data.docs;
                                  return ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: data.map((doc) {
                                      try {
                                        serviceName =
                                            doc.get(FieldPath(['name']));
                                        serviceImg =
                                            doc.get(FieldPath(['image']));
                                      } on StateError catch (e) {
                                        serviceName = e.message;
                                        serviceImg = e.message;
                                      }
                                      return FeaturedServices(
                                        name: serviceName,
                                        image: Image.network(
                                          serviceImg,
                                          fit: BoxFit.cover,
                                        ),
                                        icon: kRatingIcon,
                                      );
                                    }).toList(),
                                  );
                                } else {
                                  return Center(
                                    child: Text('No Data Found'),
                                  );
                                }
                              }),
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
