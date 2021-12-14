import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fyp/AppAsset/AppAssets.dart';
import 'package:fyp/AppAsset/AppColors.dart';
import 'package:fyp/widget/RewardProgressWidget.dart';
import 'package:fyp/widget/RewardWidgets.dart';

class ProfessionalProfileScreen extends StatefulWidget {
  @override
  _ProfessionalProfileScreenState createState() => _ProfessionalProfileScreenState();
}

class _ProfessionalProfileScreenState extends State<ProfessionalProfileScreen> {
  double jobCompleted = 123.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: Text(
          'Rewards',
          style: TextStyle(
            fontFamily: 'Montserrat',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: [
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.98,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0)),
                        color: colorPrimary,
                      ),
                      child: Center(
                        child: Text(
                          'Rewards are based on your performance',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: colorWhite,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        '1 Apr - 1 Jul',
                        style: TextStyle(
                          color: colorBlack,
                          fontSize: 14.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      CustomPaint(
                        child: Container(
                          width: 200.0,
                          height: 200.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '$jobCompleted',
                                style: TextStyle(
                                    color: colorBlack,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w900,
                                    fontSize: 12.0),
                              ),
                              Text(
                                'Jobs Completed',
                                style: TextStyle(
                                    color: colorPrimary,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w900,
                                    fontSize: 12.0),
                              ),
                            ],
                          ),
                        ),
                        foregroundPainter:
                        RewardProgressWidget(currentProgress: jobCompleted),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text('Unlock Silver',
                          style: TextStyle(
                              color: colorBlack,
                              fontSize: 16.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w900)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Complete 200 jobs by 1 Jul with',
                  style: TextStyle(
                    color: colorGrey,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  'average rating of 4.50',
                  style: TextStyle(
                    color: colorGrey,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'View Details',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: colorPrimary,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: colorPrimary,
                      size: 20.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.12,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Row(
                      children: <Widget>[
                        RewardWidgets(
                          tier: 'Bronze',
                          color: colorPrimary,
                          colorText: colorWhite,
                        ),
                        SizedBox(width: 15.0),
                        RewardWidgets(
                          tier: 'Silver',
                          color: colorGrey,
                          colorText: colorWhite,
                        ),
                        SizedBox(width: 15.0),
                        RewardWidgets(
                          tier: 'Gold',
                          color: colorGrey,
                          colorText: colorWhite,
                        ),
                      ],
                    ),
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
