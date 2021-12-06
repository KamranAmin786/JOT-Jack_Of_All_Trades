import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp/AppAssets.dart';
import 'package:fyp/AppColors.dart';
import 'package:fyp/widget/CachedImage.dart';
import 'package:fyp/widget/CircleProgress.dart';
import 'package:fyp/widget/DrawerWidget.dart';

class ProfessionalHomeScreen extends StatefulWidget {
  @override
  _ProfessionalHomeScreenState createState() => _ProfessionalHomeScreenState();
}

class _ProfessionalHomeScreenState extends State<ProfessionalHomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String name = 'Awais Asad';
  String skill = 'Electrition';
  String level = 'BRONZE';
  double responseRate = 60;
  double completionRate = 50;
  double cancellationRate = 30;
  String date = 'JUL 15,2021';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.0),
          child: Stack(
            children: [
              Material(
                elevation: 5.0,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0)),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0)),
                    color: colorPrimary,
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30.0,
                      ),
                      Column(
                        children: <Widget>[
                          CachedImage(
                            image:
                            'https://i.dailymail.co.uk/i/pix/2016/03/24/21/3287562900000578-3508521-image-a-4_1458854729917.jpg',
                          ),
                          SizedBox(
                            height: 3.0,
                          ),
                          Text(
                            name,
                            style: TextStyle(
                                color: colorWhite,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                fontSize: 18.0),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            skill,
                            style: TextStyle(
                                color: colorWhite,
                                letterSpacing: 2.0,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Level',
                                style: TextStyle(
                                    color: colorWhite,
                                    letterSpacing: 2.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                    fontSize: 14.0),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                level,
                                style: TextStyle(
                                    color: colorWhite,
                                    letterSpacing: 2.0,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15.0),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 20.0,
                left: 10.0,
                child: IconButton(
                  icon: Icon(Icons.menu),
                  color: colorWhite,
                  iconSize: 33.0,
                  onPressed: () {
                    _scaffoldKey.currentState.openDrawer();
                  },
                ),
              ),
              Positioned(
                top: 20.0,
                right: 20.0,
                child: InkWell(
                  child: Text(
                    'HELP',
                    style: TextStyle(
                        color: colorWhite,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Montserrat',
                        fontSize: 13.0),
                  ),
                  onTap: (){
                    //todo
                  },
                ),
              )
            ],
          ),
        ),
        key: _scaffoldKey,
        drawer: DrawerWidget(),
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Here's how you're doing",
                              style: mainHeadingStyle),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Next evaluation",
                              style: mainSubheadingStyle),
                          Text("$date", style: mainSubheadingStyle),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              CustomPaint(
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  child: Center(
                                      child: Text(
                                        '$responseRate',
                                        style: TextStyle(
                                            color: colorBlack,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w900,
                                            fontSize: 12.0),
                                      )),
                                ),
                                foregroundPainter: CircleProgress(
                                    currentProgress: responseRate),
                              ),
                              Text('Response Rate',
                                  style: progressIndicatorStyle),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              CustomPaint(
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  child: Center(
                                      child: Text(
                                        '$completionRate',
                                        style: TextStyle(
                                            color: colorBlack,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w900,
                                            fontSize: 12.0),
                                      )),
                                ),
                                foregroundPainter: CircleProgress(
                                    currentProgress: completionRate),
                              ),
                              Text('Completion Rate',
                                  style: progressIndicatorStyle),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              CustomPaint(
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  child: Center(
                                      child: Text(
                                        '$cancellationRate',
                                        style: TextStyle(
                                            color: colorBlack,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w900,
                                            fontSize: 12.0),
                                      )),
                                ),
                                foregroundPainter: CircleProgress(
                                    currentProgress: cancellationRate),
                              ),
                              Text('Cancellation Rate',
                                  style: progressIndicatorStyle),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(height: 5.0,),
                    Divider(thickness: 2,),
                    Container(
                      color: colorWhite,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 5.0,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Earnings', style: headingStyle),
                                Text(
                                  'Details',
                                  style: subheadingStyle,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0)),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 15.0,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            'Personal balance',
                                            style: TextStyle(
                                              color: colorBlack,
                                              fontSize: 14.0,
                                              fontFamily: 'Montserrat',
                                            ),
                                          ),
                                          Text(
                                            'Earnings in July',
                                            style: TextStyle(
                                              color: colorBlack,
                                              fontSize: 14.0,
                                              fontFamily: 'Montserrat',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            "RS.72",
                                            style: TextStyle(
                                                color: colorBlack,
                                                fontSize: 12.0,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w900),
                                          ),
                                          Text(
                                            ' RS.0',
                                            style: TextStyle(
                                                color: colorBlack,
                                                fontSize: 12.0,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w900),
                                          ),
                                          SizedBox(
                                            width: 20.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            'Avg, selling price',
                                            style: TextStyle(
                                              color: colorBlack,
                                              fontSize: 14.0,
                                              fontFamily: 'Montserrat',
                                            ),
                                          ),
                                          Text(
                                            'Active orders',
                                            style: TextStyle(
                                              color: colorBlack,
                                              fontSize: 14.0,
                                              fontFamily: 'Montserrat',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            "RS.67.50",
                                            style: TextStyle(
                                                color: colorBlack,
                                                fontSize: 12.0,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w900),
                                          ),
                                          Text(
                                            ' 0 (RS.0)',
                                            style: TextStyle(
                                                color: colorBlack,
                                                fontSize: 12.0,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w900),
                                          ),
                                          SizedBox(
                                            width: 20.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            'Pending clearance',
                                            style: TextStyle(
                                              color: colorBlack,
                                              fontSize: 14.0,
                                              fontFamily: 'Montserrat',
                                            ),
                                          ),
                                          Text(
                                            'Cancelled orders',
                                            style: TextStyle(
                                              color: colorBlack,
                                              fontSize: 14.0,
                                              fontFamily: 'Montserrat',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            "RS.1012",
                                            style: TextStyle(
                                                color: colorBlack,
                                                fontSize: 12.0,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w900),
                                          ),
                                          Text(
                                            ' 0 (RS.0)',
                                            style: TextStyle(
                                                color: colorBlack,
                                                fontSize: 12.0,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w900),
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                        ],
                      ),
                    ),
                    Divider(thickness: 2,),
                    Container(
                      color: colorWhite,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: Row(
                              children: [
                                Text(
                                  "Pending Tasks",
                                  style: headingStyle,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0),bottomLeft: Radius.circular(20.0)),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0),bottomLeft: Radius.circular(20.0)),
                                  color: colorWhite,
                                ),
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 15.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0, vertical: 8.0),
                                      child: Row(
                                        children: [
                                          Text('0 Pending tasks',
                                              style: TextStyle(
                                                  color: colorPrimary,
                                                  fontSize: 16.0,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w900)),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0, vertical: 3.0),
                                      child: Row(
                                        children: [
                                          Text(
                                              'Your response time is good keep up the',
                                              style: TextStyle(
                                                  color: colorBlack,
                                                  fontSize: 14.0,
                                                  fontFamily: 'Montserrat')),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0),
                                      child: Row(
                                        children: [
                                          Text('great work',
                                              style: TextStyle(
                                                  color: colorBlack,
                                                  fontSize: 14.0,
                                                  fontFamily: 'Montserrat')),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                        ],
                      ),
                    ),
                    Divider(thickness: 2,),
                    Container(
                      color: colorWhite,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 5.0,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: Row(
                              children: [
                                Text(
                                  "My Skills",
                                  style: headingStyle,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Material(
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0),bottomLeft: Radius.circular(20.0)),
                              elevation: 5.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0),bottomLeft: Radius.circular(20.0)),
                                  color: colorWhite,
                                ),
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 15.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Statistics',
                                              style: TextStyle(
                                                  color: colorPrimary,
                                                  fontSize: 16.0,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w900)),
                                          Text('Last 7 days',
                                              style: TextStyle(
                                                  color: colorPrimary,
                                                  fontSize: 16.0,
                                                  fontFamily: 'Montserrat')),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Total jobs',
                                              style: TextStyle(
                                                  color: colorBlack,
                                                  fontSize: 14.0,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w600)),
                                          Row(
                                            children: [
                                              Text('73',
                                                  style: TextStyle(
                                                      color: colorBlack,
                                                      fontSize: 14.0,
                                                      fontFamily: 'Montserrat',
                                                      fontWeight:
                                                          FontWeight.w900)),
                                              Icon(
                                                Icons.arrow_upward,
                                                color: colorPrimary,
                                                size: 18.0,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Ceiling Fan',
                                              style: TextStyle(
                                                  color: colorBlack,
                                                  fontSize: 13.0,
                                                  fontFamily: 'Montserrat')),
                                          Text('14',
                                              style: TextStyle(
                                                  color: colorBlack,
                                                  fontSize: 14.0,
                                                  fontFamily: 'Montserrat')),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('AC installation',
                                              style: TextStyle(
                                                  color: colorBlack,
                                                  fontSize: 13.0,
                                                  fontFamily: 'Montserrat')),
                                          Text('24',
                                              style: TextStyle(
                                                  color: colorBlack,
                                                  fontSize: 14.0,
                                                  fontFamily: 'Montserrat')),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Refrigerator',
                                              style: TextStyle(
                                                  color: colorBlack,
                                                  fontSize: 13.0,
                                                  fontFamily: 'Montserrat')),
                                          Text('29',
                                              style: TextStyle(
                                                  color: colorBlack,
                                                  fontSize: 14.0,
                                                  fontFamily: 'Montserrat')),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ),
                    Divider(thickness: 2,),
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
