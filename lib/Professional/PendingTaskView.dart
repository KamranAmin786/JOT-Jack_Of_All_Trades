import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp/AppColors.dart';

class PendingTaskView extends StatefulWidget {
  final String category;
  final String job;
  final String units;
  final int price;
  final String status;
  PendingTaskView({this.status,this.price,this.units,this.job,this.category});
  @override
  _PendingTaskViewState createState() => _PendingTaskViewState();
}

class _PendingTaskViewState extends State<PendingTaskView> {
  @override
  Widget build(BuildContext context) {
    String price = widget.price.toString();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: Column(
          children: <Widget>[
            AppBar(
              backgroundColor: colorPrimary,
              title: Text(
                'Pending Task',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
            SizedBox(height: 25.0,),
            Text('JOB DESCRIPTION',style: TextStyle(fontFamily: 'Montserrat',color: colorBlack,fontWeight: FontWeight.w900,fontSize: 25.0),),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 10.0),
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: colorPrimary,
                  elevation: 4.0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    child: Column(
                      children: <Widget>[
                        Center(child: Text('HOMEOWNER INFORMATION',style: TextStyle(color : colorWhite ,fontFamily: 'Montserrat',fontSize: 16.0,fontWeight: FontWeight.w900),)),
                        SizedBox(height: 15.0,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Name',style: TextStyle(fontWeight :FontWeight.w900,fontFamily: 'Montserrat',fontSize: 14.0,color : colorWhite ,),),
                              Text('Muhammad Kamran',style: TextStyle(fontFamily: 'Montserrat',fontSize: 14.0,color : colorWhite ,),)
                            ],
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Contact',style: TextStyle(fontWeight :FontWeight.w900,fontFamily: 'Montserrat',fontSize: 14.0,color : colorWhite ,),),
                              Text('03022272789',style: TextStyle(fontFamily: 'Montserrat',fontSize: 14.0,color : colorWhite ,),)
                            ],
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Address',style: TextStyle(fontWeight :FontWeight.w900,fontFamily: 'Montserrat',fontSize: 14.0,color : colorWhite ,),),
                              Container(width : 200,child: Text('Floor 9 , Room 1-2 , Saith Mansion , Edward Road , Near Jain Mandir Lahore',style: TextStyle(fontFamily: 'Montserrat',fontSize: 14.0,color : colorWhite ,),textAlign: TextAlign.justify,)),
                            ],
                          ),
                        ),
                        SizedBox(height: 40.0,),
                        InkWell(
                          child: Material(
                            elevation: 6.0,
                            borderRadius: BorderRadius.circular(25.0),
                            color: colorPrimaryLight,
                            child: Container(
                              width: 200.0,
                              height: 50.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('GET DIRECTION',style: TextStyle(fontFamily: 'Montserrat',color: colorWhite,fontSize: 15.0,fontWeight: FontWeight.w900),),
                                  SizedBox(width: 10.0,),
                                  Icon(Icons.arrow_forward,color: colorWhite,),
                                ],
                              ),
                            ),
                          ),
                          onTap: (){
                            //todo
                          },
                        ),
                        SizedBox(height: 10.0,),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 10.0),
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: colorPrimary,
                  elevation: 4.0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    child: Column(
                      children: <Widget>[
                        Center(child: Text('JOB INFORMATION',style: TextStyle(color : colorWhite ,fontFamily: 'Montserrat',fontSize: 16.0,fontWeight: FontWeight.w900),)),
                        SizedBox(height: 15.0,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Category',style: TextStyle(fontWeight :FontWeight.w900,fontFamily: 'Montserrat',fontSize: 14.0,color : colorWhite ,),),
                              Text(widget.category,style: TextStyle(fontFamily: 'Montserrat',fontSize: 14.0,color : colorWhite ,),)
                            ],
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('JOB',style: TextStyle(fontWeight :FontWeight.w900,fontFamily: 'Montserrat',fontSize: 14.0,color : colorWhite ,),),
                              Text(widget.job,style: TextStyle(fontFamily: 'Montserrat',fontSize: 14.0,color : colorWhite ,),)
                            ],
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('UNITS',style: TextStyle(fontWeight :FontWeight.w900,fontFamily: 'Montserrat',fontSize: 14.0,color : colorWhite ,),),
                              Text(widget.units,style: TextStyle(fontFamily: 'Montserrat',fontSize: 14.0,color : colorWhite ,),textAlign: TextAlign.justify,),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('PRICE',style: TextStyle(fontWeight :FontWeight.w900,fontFamily: 'Montserrat',fontSize: 14.0,color : colorWhite ,),),
                              Text('PKR $price',style: TextStyle(fontFamily: 'Montserrat',fontSize: 14.0,color : colorWhite ,),textAlign: TextAlign.justify,),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('STATUS',style: TextStyle(fontWeight :FontWeight.w900,fontFamily: 'Montserrat',fontSize: 14.0,color : colorWhite ,),),
                              Text(widget.status,style: TextStyle(fontFamily: 'Montserrat',fontSize: 14.0,color : colorWhite ,),textAlign: TextAlign.justify,),
                            ],
                          ),
                        ),
                        SizedBox(height: 40.0,),
                        InkWell(
                          child: Material(
                            elevation: 6.0,
                            borderRadius: BorderRadius.circular(25.0),
                            color: colorPrimaryLight,
                            child: Container(
                              width: 200.0,
                              height: 50.0,
                              child : Center(child: Text('START  JOB',style: TextStyle(letterSpacing : 2.0,fontFamily: 'Montserrat',color: colorWhite,fontSize: 15.0,fontWeight: FontWeight.w900),)),
                            ),
                          ),
                          onTap: (){
                            //todo
                          },
                        ),
                        SizedBox(height: 10.0,),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
