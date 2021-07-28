import 'package:flutter/material.dart';
import 'package:fyp/components/services_list.dart';
import 'package:fyp/constants.dart';

class ServiceScreen extends StatefulWidget {
  ServiceScreen({this.image, this.name});
  final Image image;
  final String name;
  static const String id = 'service_screen';

  @override
  _ServiceScreenState createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            color: kServiceScreenContainerColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 200.0,
                  child: widget.image,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    widget.name,
                    style: kHomeScreenHeadings.copyWith(color: Colors.black),
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      kDivider,
                      ServicesList(
                        name: 'LCD / LED TV Installation',
                        icon: Icons.tv,
                      ),
                      kDivider,
                      ServicesList(
                        name: 'LCD / LED TV Installation',
                        icon: Icons.tv,
                      ),
                      kDivider,
                      ServicesList(
                        name: 'LCD / LED TV Installation',
                        icon: Icons.tv,
                      ),
                      kDivider,
                      ServicesList(
                        name: 'LCD / LED TV Installation',
                        icon: Icons.tv,
                      ),
                      kDivider,
                      ServicesList(
                        name: 'LCD / LED TV Installation',
                        icon: Icons.tv,
                      ),
                      kDivider,
                      ServicesList(
                        name: 'LCD / LED TV Installation',
                        icon: Icons.tv,
                      ),
                      kDivider,
                      ServicesList(
                        name: 'LCD / LED TV Installation',
                        icon: Icons.tv,
                      ),
                      kDivider,
                      ServicesList(
                        name: 'LCD / LED TV Installation',
                        icon: Icons.tv,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
