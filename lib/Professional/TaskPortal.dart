import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fyp/AppColors.dart';
import 'package:fyp/Professional/ProfessionalJobView.dart';
import 'package:fyp/Professional/ProfessionalProfileScreen.dart';
import 'package:fyp/widget/ProfessionalPortalWidget.dart';

class TaskPortal extends StatefulWidget {
  @override
  _TaskPortalState createState() => _TaskPortalState();
}

class _TaskPortalState extends State<TaskPortal> {
  String professionalName = 'Awais Asad';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(170),
        child: Column(
          children: [
            AppBar(
              backgroundColor: colorPrimary,
              actions: <Widget>[
                InkWell(
                  child: Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                          color: colorWhite,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfessionalProfileScreen()));
                  },
                ),
                SizedBox(
                  width: 40.0,
                ),
                InkWell(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.task),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Jobs',
                        style: TextStyle(
                          color: colorWhite,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfessionalJobView()));
                  },
                ),
                SizedBox(
                  width: 40.0,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: ListTile(
                title: Text(
                  'Professional Portal',
                  style: TextStyle(
                    color: colorPrimary,
                    fontWeight: FontWeight.w900,
                    fontSize: 24.0,
                    fontFamily: 'Montserrat',
                  ),
                ),
                subtitle: Text(
                  professionalName,
                  style: TextStyle(
                      color: colorGrey, fontFamily: 'Montserrat', fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 5.0,),
            Text(
              'Professional Dashboard',
              style: TextStyle(
                  color: colorBlack,
                  fontFamily: 'Montserrat',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500),
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: GridView(
                  padding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  shrinkWrap: true,
                  primary: false,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 1),
                  children: [
                    ProfessionalPortalWidget(
                      icon: Icons.star_border_outlined,
                      rating: '4.95',
                      field: 'Professional Rating',
                    ),
                    ProfessionalPortalWidget(
                      icon: Icons.timelapse,
                      rating: '23h 19m',
                      field: 'Availability',
                    ),
                    ProfessionalPortalWidget(
                      icon: FontAwesomeIcons.check,
                      rating: '88.6 %',
                      field: 'Acceptance Rate',
                    ),
                    ProfessionalPortalWidget(
                      icon: FontAwesomeIcons.checkDouble,
                      rating: '90.89 %',
                      field: 'Completion Rate',
                    ),

                  ],
                )),
            SizedBox(height: 10.0,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Material(
                elevation: 5.0,
                child: Container(
                  color: colorWhite.withOpacity(0.9),
                  width: double.infinity,
                  height: 60.0,
                  child: Row(
                    children: [
                      SizedBox(width: 20.0,),
                      Icon(FontAwesomeIcons.searchDollar,size: 20.0,color: colorPrimary,),
                      SizedBox(width: 15.0,),
                      Text('Incentives',style: TextStyle(
                          color: colorPrimary,
                          fontFamily: 'Montserrat',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Material(
                elevation: 5.0,
                child: Container(
                  color: colorWhite.withOpacity(0.9),
                  width: double.infinity,
                  height: 60.0,
                  child: Row(
                    children: [
                      SizedBox(width: 20.0,),
                      Icon(FontAwesomeIcons.fileDownload,size: 20.0,color: colorPrimary,),
                      SizedBox(width: 15.0,),
                      Text('Download Tax Invoice',style: TextStyle(
                          color: colorPrimary,
                          fontFamily: 'Montserrat',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.exclamationCircle,size: 25.0,color: colorOrange,),
                title: Text('Cash Block Tracker',style: TextStyle(color: colorPrimary,fontSize : 15.0,fontWeight: FontWeight.w900,fontFamily: 'Montserrat'),),
                trailing: Text('- PKR 640.42',style: TextStyle(color: colorOrange,fontSize : 18.0 ,fontWeight: FontWeight.w900,fontFamily: 'Montserrat'),),
              ),
            ),
            SizedBox(height: 10.0,),
            Divider(thickness: 2,height: 3.0,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0),
              child: ListTile(
                title: Text('Cancelled Jobs',style: TextStyle(color: colorBlack,fontSize : 18.0,fontWeight: FontWeight.w600,fontFamily: 'Montserrat'),),
                subtitle: Text('  x  2 '),
                trailing: Text('PKR 60.28',style: TextStyle(color: colorPrimary,fontSize : 18.0,fontWeight: FontWeight.w600,fontFamily: 'Montserrat'),),
              ),
            ),
            Divider(thickness: 2,height: 3.0,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0),
              child: ListTile(
                title: Text('Jobs',style: TextStyle(color: colorBlack,fontSize : 18.0,fontFamily: 'Montserrat',fontWeight: FontWeight.w600),),
                subtitle: Text('  x  25 '),
                trailing: Text('PKR 2360.28',style: TextStyle(color: colorPrimary,fontFamily: 'Montserrat',fontSize : 18.0,fontWeight: FontWeight.w600),),
              ),
            ),
            Divider(thickness: 2,height: 3.0,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0),
              child: ListTile(
                title: Text('Cycle Adjustment',style: TextStyle(color: colorBlack,fontFamily: 'Montserrat',fontSize : 18.0,fontWeight: FontWeight.w600),),
                subtitle: Text('  x  1 '),
                trailing: Text('PKR 100.28',style: TextStyle(color: colorPrimary,fontFamily: 'Montserrat',fontSize : 18.0,fontWeight: FontWeight.w600),),
              ),
            ),
            Divider(thickness: 2,height: 3.0,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0),
              child: ListTile(
                title: Text('Bonus',style: TextStyle(color: colorBlack,fontFamily: 'Montserrat',fontSize : 18.0,fontWeight: FontWeight.w600),),
                subtitle: Text('  x  4 '),
                trailing: Text('PKR 3000.00',style: TextStyle(color: colorPrimary,fontFamily: 'Montserrat',fontSize : 18.0,fontWeight: FontWeight.w600),),
              ),
            ),
            Divider(thickness: 2,height: 3.0,),
            SizedBox(height: 15.0,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20.0),
                color: colorGrey,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 25.0,horizontal: 5.0),
                  child: ListTile(
                    title: Text('Want higher cash limit ?',style: TextStyle(color: colorWhite,fontSize : 18.0,fontWeight: FontWeight.w600,fontFamily: 'Montserrat'),),
                    subtitle: Text('Upgrade to silver tier to increase your cash limit',maxLines: 2,style: TextStyle(color: colorWhite,fontSize : 14.0,fontWeight: FontWeight.w600,fontFamily: 'Montserrat'),),
                    trailing: Icon(FontAwesomeIcons.moneyBillWave,size: 25.0,color: colorWhite,),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25.0,),
            Column(
              children: <Widget>[
                Text('Total cash balance',style: TextStyle(color: colorBlack,fontSize : 20.0,fontWeight: FontWeight.w900,fontFamily: 'Montserrat'),),
                SizedBox(height: 15.0,),
                Text(' - PKR 640.42 ',style: TextStyle(color: colorRed,fontSize : 33.0,fontWeight: FontWeight.w900,letterSpacing: 2.0,fontFamily: 'Montserrat'),),
                SizedBox(height: 30.0,),
                Text('Please pay the outstanding amount',style: TextStyle(color: colorGrey,fontSize : 15.0,fontWeight: FontWeight.w900,fontFamily: 'Montserrat'),),
                Text('to your EasyPaisa cash pick up',style: TextStyle(color: colorGrey,fontSize : 15.0,fontWeight: FontWeight.w900,fontFamily: 'Montserrat'),),
                SizedBox(height: 20.0,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
