import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TaskAssignment extends StatefulWidget {
  static const String id = 'task_assignment_screen';

  @override
  _TaskAssignmentState createState() => _TaskAssignmentState();
}

class _TaskAssignmentState extends State<TaskAssignment> {
  PickResult selectedPlace;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: PlacePicker(
                  apiKey: 'AIzaSyAqMTNNAbkzRxoatfpKFChfGcqfgXFqiT4',
                  initialPosition:
                      LatLng(29.696627602437214, 72.53567258307197),
                  resizeToAvoidBottomInset: true,
                  useCurrentLocation: true,
                  desiredLocationAccuracy: LocationAccuracy.high,
                  autoCompleteDebounceInMilliseconds: 500,
                  automaticallyImplyAppBarLeading: false,
                  enableMapTypeButton: false,
                  hintText: 'Search',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                color: Colors.white,
                height: 250.0,
                child: ListView(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Card(
                          color: Colors.grey.shade400,
                          child: ListTile(
                            title: Text(
                              'LCD / LED TV Installation',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            trailing: Container(
                              color: Colors.red,
                              child: Text(
                                'View Coupons',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Base Rates',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20.0)),
                            Text('PKR 200',
                                style: TextStyle(
                                    color: Colors.teal, fontSize: 20.0)),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Payment',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20.0)),
                            Text('CASH',
                                style: TextStyle(
                                    color: Colors.red, fontSize: 20.0)),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: FlatButton(
                                  color: Colors.black,
                                  child: Text(
                                    'Schedule',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15.0),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              SizedBox(width: 15.0),
                              Expanded(
                                child: FlatButton(
                                  color: Colors.black,
                                  child: Text(
                                    'Request',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15.0),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
