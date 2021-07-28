import 'package:flutter/material.dart';
import 'package:fyp/constants.dart';
import 'package:fyp/components/featured_items.dart';

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
                        'How can we help you?',
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
                          hintText: 'Search for required service',
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
                        'Featured',
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
                                name: 'Electrician',
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: 'Plumber',
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: 'Mover',
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: 'Carpenter',
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: 'Cleaner',
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: 'Aluminium',
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
                                name: 'Ac Installation',
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: 'Wooden Doors',
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: 'Glass Windows',
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: 'Room Cleansing',
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: 'Shifting',
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: 'Kitchen Leakage',
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
                                name: 'Professionals',
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: 'Professionals',
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: 'Professionals',
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: 'Professionals',
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: 'Professionals',
                                image: Image.asset(
                                  'images/city_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                                icon: kRatingIcon,
                              ),
                              FeaturedServices(
                                name: 'Professionals',
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
