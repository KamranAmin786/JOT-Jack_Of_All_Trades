import 'package:flutter/material.dart';
import 'package:fyp/AppAsset/constants.dart';
import 'package:fyp/screens/HomeOwner/Interactive/service_screen.dart';
import 'package:fyp/screens/HomeOwner/Interactive/task_assignment_screen.dart';

class FeaturedServices extends StatelessWidget {
  FeaturedServices({
    this.icon,
    this.name,
    this.image,
  });

  final String name;
  final Icon icon;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.0,
      child: FlatButton(
        padding: EdgeInsets.all(0.0),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minWidth: 0.0,
        child: Card(
          color: kHomeScreenItemBackgroundColor,
          child: Wrap(
            children: <Widget>[
              Container(child: image,height: 100,width: 155,),
              ListTile(
                title: Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        onPressed: () {
          if (name == "Mover" || name =="Catcher Replacement" || name =="Door Installation" || name =="Door Lock and Catcher Replacement" || name =="Door Repairing" || name =="Drawer Repairing" || name =="Furniture Polish Service" || name =="Furniture Repairing" || name =="Sofa Repairing" || name =="Wardrobe Repairing"|| name =="Wooden Table and Chair Repairing" ) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TaskAssignment(serviceName: name,)));
          } else {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ServiceScreen(
                          image: image,
                          name: name,
                        )));
          }
        },
      ),
    );
  }
}
