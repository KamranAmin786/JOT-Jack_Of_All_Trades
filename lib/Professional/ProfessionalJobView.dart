import 'package:flutter/material.dart';
import 'package:fyp/AppColors.dart';
import 'package:fyp/widget/JobPortalCompletedWidget.dart';
import 'package:fyp/widget/JobPortalPendingWidget.dart';
import 'package:fyp/widget/ToogleButtons.dart';

enum JobType {
  pending,
  completed,
}

class ProfessionalJobView extends StatefulWidget {
  @override
  _ProfessionalJobViewState createState() => _ProfessionalJobViewState();
}

class _ProfessionalJobViewState extends State<ProfessionalJobView> {
  String professionalName = 'Asad Asad';
  String professionalSkillMajor = 'Electrician';
  JobType selectedType = JobType.pending;
  List jobs = ['aa','aa','aa','aa'];
  bool displayContent = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(265),
        child: Column(
          children: [
            AppBar(
              backgroundColor: colorPrimary,
              title: Text('JOB MANAGER',style: TextStyle(fontFamily: 'Montserrat',),),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: ListTile(
                title: Text(
                  'Job Portal',
                  style: TextStyle(
                    color: colorPrimary,
                    fontWeight: FontWeight.w900,
                    fontSize: 24.0,
                    fontFamily: 'Montserrat',
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 5.0,),
                    Text(
                      professionalName,
                      style: TextStyle(
                          color: colorGrey, fontFamily: 'Montserrat', fontSize: 16),
                    ),
                    Text(
                      professionalSkillMajor,
                      style: TextStyle(
                          color: colorGrey, fontFamily: 'Montserrat', fontSize: 16),
                    ),
                    SizedBox(height: 15.0,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ToogleButtons(
                            onPressed: () {
                              setState(() {
                                selectedType = JobType.completed;
                                displayContent = false;
                              });
                            },
                            colour: selectedType == JobType.completed
                                ? colorPrimaryLight
                                : colorGrey,
                            text: 'Completed',
                          ),
                          ToogleButtons(
                            onPressed: () {
                              setState(() {
                                selectedType = JobType.pending;
                                displayContent = true;
                              });
                            },
                            colour: selectedType == JobType.pending
                                ? colorPrimary
                                : colorGrey,
                            text: 'Pending',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
            displayContent ? Container(
                  child: Column(
                    children: <Widget>[
                      JobPortalPendingWidget(category: 'ELECTRICITY',job: 'AC INSTALLATION', units: 'x 2',price: 1500,statusColor: colorPrimary,textColor: colorWhite,),
                      SizedBox(height: 15.0,),
                      JobPortalPendingWidget(category: 'ELECTRICITY',job: 'AC INSTALLATION', units: 'x 2',price: 1500,statusColor: colorPrimary,textColor: colorWhite,),
                      SizedBox(height: 15.0,),
                      JobPortalPendingWidget(category: 'ELECTRICITY',job: 'AC INSTALLATION', units: 'x 2',price: 1500,statusColor: colorPrimary,textColor: colorWhite,),
                      SizedBox(height: 15.0,),
                      JobPortalPendingWidget(category: 'ELECTRICITY',job: 'AC INSTALLATION', units: 'x 2',price: 1500,statusColor: colorPrimary,textColor: colorWhite,),
                      SizedBox(height: 15.0,),
                      JobPortalPendingWidget(category: 'ELECTRICITY',job: 'AC INSTALLATION', units: 'x 2',price: 1500,statusColor: colorPrimary,textColor: colorWhite,),
                    ],
                  ),
                ) :
                Container(
                  child: Column(
                    children: <Widget>[
                      JobPortalCompletedWidget(category: 'ELECTRICITY',job: 'AC INSTALLATION', units: 'x 2',price: 1500,statusColor: colorPrimaryLight,textColor: colorWhite,),
                      SizedBox(height: 15.0,),
                      JobPortalCompletedWidget(category: 'ELECTRICITY',job: 'AC INSTALLATION', units: 'x 2',price: 1500,statusColor: colorPrimaryLight,textColor: colorWhite,),
                      SizedBox(height: 15.0,),
                      JobPortalCompletedWidget(category: 'ELECTRICITY',job: 'AC INSTALLATION', units: 'x 2',price: 1500,statusColor: colorPrimaryLight,textColor: colorWhite,),
                      SizedBox(height: 15.0,),
                      JobPortalCompletedWidget(category: 'ELECTRICITY',job: 'AC INSTALLATION', units: 'x 2',price: 1500,statusColor: colorPrimaryLight,textColor: colorWhite,),
                      SizedBox(height: 15.0,),
                      JobPortalCompletedWidget(category: 'ELECTRICITY',job: 'AC INSTALLATION', units: 'x 2',price: 1500,statusColor: colorPrimaryLight,textColor: colorWhite,),
                    ],
                  ),
                ),
              ],
            ),
      ),
    );
  }
}