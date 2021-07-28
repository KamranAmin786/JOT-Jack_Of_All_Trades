import 'package:flutter/material.dart';
import 'package:fyp/AppColors.dart';
import 'package:fyp/Professional/PendingTaskView.dart';

class JobPortalPendingWidget extends StatelessWidget {
  final String category;
  final String job;
  final String units;
  final int price;
  final Color statusColor;
  final Color textColor;
  final String status;

  JobPortalPendingWidget({this.job,this.category,this.units,this.price,this.statusColor,this.textColor,this.status});
  @override
  Widget build(BuildContext context) {
    String status = 'PENDING';
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(20.0),
          color: statusColor,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 18.0,horizontal: 0.0),
            child: ListTile(
              title: Row(
                children: [
                  Text('CATEGORY',style: TextStyle(color : textColor ,letterSpacing : 1.0,fontFamily: 'Montserrat',fontSize: 16.0,fontWeight: FontWeight.w900),),
                  SizedBox(width: 10.0,),
                  Text(category,style: TextStyle(color : textColor ,letterSpacing : 1.0,fontFamily: 'Montserrat',fontSize: 16.0,fontWeight: FontWeight.w900),),
                ],
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 2.0,),
                  Text(job,style: TextStyle(color : textColor ,letterSpacing : 2.0,fontFamily: 'Montserrat',fontSize: 14.0,fontWeight: FontWeight.w900),),
                  SizedBox(height: 2.0,),
                  Text(units,style: TextStyle(color : textColor ,letterSpacing : 2.0,fontFamily: 'Montserrat',fontSize: 12.0,fontWeight: FontWeight.w900),),
                ],
              ),
              trailing: Container(
                width: 90.0,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: colorPurple,
                ),
                child: Center(child: Text('PKR $price',style: TextStyle(fontFamily: 'Montserrat',color: colorWhite,fontWeight: FontWeight.w900),)),
              ),
            ),
          ),
        ),
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PendingTaskView(
                    category: category,
                    units: units,
                    price: price,
                    job: job,
                    status: status,
                  )));
        },
      ),
    );
  }
}
