import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fyp/navigator.dart';

class ServiceScreen extends StatefulWidget {
  ServiceScreen({this.image, this.name});

  final Image image;
  final String name;
  static const String id = 'service_screen';

  @override
  _ServiceScreenState createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  final firebase = FirebaseFirestore.instance;
  String subServiceName;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

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
                  child: FutureBuilder<QuerySnapshot>(
                    future: firebase.collection('MainServices').doc('${widget.name}').collection('SubServices').get(),
                      builder: (context, snapshots) {
                        if (snapshots.hasData) {
                          final List<DocumentSnapshot> data =
                              snapshots.data.docs;
                          return ListView(
                            children: data.map((doc) {
                              try {
                                subServiceName =
                                    doc.get(FieldPath(['name']));
                              } on StateError catch (e) {
                                subServiceName = e.message;
                              }
                              return  Column(
                                children: [
                                  ServicesList(
                                    name: subServiceName,
                                    icon: Icons.tv,
                                  ),
                                  kDivider,
                                ],
                              );
                            }).toList(),
                          );
                        } else {
                          return Center(
                            child: Text('No Data Found'),
                          );
                        }
                      }),
                ),
                // Expanded(
                //   child: ListView(
                //     children: <Widget>[
                //       kDivider,
                //       ServicesList(
                //         name: "text40".tr().toString(),
                //         icon: Icons.tv,
                //       ),
                //       kDivider,
                //       ServicesList(
                //         name: "text40".tr().toString(),
                //         icon: Icons.tv,
                //       ),
                //       kDivider,
                //       ServicesList(
                //         name: "text40".tr().toString(),
                //         icon: Icons.tv,
                //       ),
                //       kDivider,
                //       ServicesList(
                //         name: "text40".tr().toString(),
                //         icon: Icons.tv,
                //       ),
                //       kDivider,
                //       ServicesList(
                //         name: "text40".tr().toString(),
                //         icon: Icons.tv,
                //       ),
                //       kDivider,
                //       ServicesList(
                //         name: "text40".tr().toString(),
                //         icon: Icons.tv,
                //       ),
                //       kDivider,
                //       ServicesList(
                //         name: "text40".tr().toString(),
                //         icon: Icons.tv,
                //       ),
                //       kDivider,
                //       ServicesList(
                //         name: "text40".tr().toString(),
                //         icon: Icons.tv,
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
