import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp/AppColors.dart';
import 'package:fyp/widget/EarnMoreProgressWidget.dart';

class EarnMore extends StatefulWidget {
  @override
  _EarnMoreState createState() => _EarnMoreState();
}

class _EarnMoreState extends State<EarnMore> {
  double jobCompleted = 10;
  double totalJobs  =15;
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
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Combined Incentives',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            Divider(thickness: 2.0),
            SizedBox(height: 10.0,),
            ListTile(
              title: Text('Up to PKR 670 Bonus'),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  'Start 5:00 AM Sat, JUN 24\nEnd   4:59 AM Sat, JUN 25',
                  style: TextStyle(fontSize: 12.0, color: colorGrey),
                ),
              ),
              trailing: Container(
                width: 90.0,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: colorPrimary,
                ),
                child: Center(
                    child: Text(
                  '7 hours left',
                  style: TextStyle(color: colorWhite, fontSize: 12.0),
                )),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Divider(
              thickness: 2.0,
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: colorPrimary,
                  ),
                  child: Center(child: Icon(Icons.arrow_back_ios,color: colorWhite,size: 16.0,)),
                ),
                SizedBox(width: 30.0,),
                Text('PKR 120',style: TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.w900),),
                SizedBox(width: 30.0,),
                Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: colorPrimary,
                  ),
                  child: Icon(Icons.arrow_forward_ios_rounded,color: colorWhite,size: 16.0,),
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Text('Minimum of 80% acceptance',style: TextStyle(fontFamily: 'Montserrat',color: colorGrey),),
            SizedBox(height: MediaQuery.of(context).size.height* 0.12,),
            CustomPaint(
              child: Container(
                width: 200.0,
                height: 200.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '$jobCompleted / $totalJobs',
                      style: TextStyle(
                          color: colorBlack,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w900,
                          fontSize: 12.0),
                    ),
                    SizedBox(height: 5.0,),
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
              EarnMoreProgressWidget(currentProgress: jobCompleted ,totalNumber: totalJobs ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text('Jobs Completed',
                style: TextStyle(
                    color: colorBlack,
                    fontSize: 16.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w900)),
          ],
        ),
      ),
    );
  }
}
