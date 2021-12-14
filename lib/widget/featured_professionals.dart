import 'package:flutter/material.dart';
import 'package:fyp/AppAsset/constants.dart';
import 'package:fyp/screens/HomeOwner/Interactive/service_screen.dart';
import 'package:fyp/screens/HomeOwner/Interactive/task_assignment_screen.dart';

class FeaturedProfessional extends StatelessWidget {
  FeaturedProfessional({
    this.icon,
    this.name,
    this.image,
  });

  final String name;
  final Icon icon;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: Container(
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
            // todo
          },
        ),
      ),
    );
  }
}
