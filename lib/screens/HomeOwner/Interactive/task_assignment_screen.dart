import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:fyp/main.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart';

class TaskAssignment extends StatefulWidget {
  final String serviceName;
  static const String id = 'task_assignment_screen';

  const TaskAssignment({Key key, this.serviceName}) : super(key: key);

  @override
  _TaskAssignmentState createState() => _TaskAssignmentState();
}

class _TaskAssignmentState extends State<TaskAssignment> {
  LatLng _center;
  TextEditingController feet = TextEditingController();
  Position currentLocation;
  PickResult selectedPlace;
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserLocation();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Column(
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
                      autoCompleteDebounceInMilliseconds: 2,
                      automaticallyImplyAppBarLeading: false,
                      enableMapTypeButton: false,
                      hintText: 'Search',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Container(
                    color: Colors.white,
                    height: 400.0,
                    child: ListView(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Card(
                              color: Colors.grey.shade400,
                              child: ListTile(
                                title: Text(
                                  widget.serviceName,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                trailing: Container(
                                  color: Colors.red,
                                  child: Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: Text(
                                      widget.serviceName == 'Mover'
                                          ? 'Per Kg'
                                          : 'Per Feet',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
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
                              height: 20.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Total Area',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15.0)),
                                    Text(' * optional',
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 15.0)),
                                  ],
                                ),
                                Container(
                                  child: TextFormField(
                                    controller: feet,
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.allow(
                                        (RegExp("[0-9]")),
                                      ),
                                    ],
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(hintText: 'feet',
                                    ),
                                  ),
                                  width: 50.0,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Payment',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20.0)),
                                Text('CASH',
                                    style: TextStyle(
                                        color: Colors.teal, fontSize: 20.0)),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 20.0),
                              child: Expanded(
                                child: FlatButton(
                                  minWidth: 150,
                                  color: Colors.black,
                                  child: Text(
                                    'Request',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15.0),
                                  ),
                                  onPressed: () async {
                                    getLocationName();
                                    setState(() {
                                      isLoading = true;
                                    });
                                  },
                                ),
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
            isLoading
                ? Container(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    color: Colors.black87,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: CircularProgressIndicator(
                          valueColor:
                              new AlwaysStoppedAnimation<Color>(Colors.white),
                        )),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Finding a Handyman for you',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

  Future<Position> locateUser() async {
    return Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  getUserLocation() async {
    currentLocation = await locateUser();
    setState(() {
      _center = LatLng(currentLocation.latitude, currentLocation.longitude);
    });
    print('center $_center');
  }

  getLocationName() async {
    List<Placemark> placemarks = await placemarkFromCoordinates(
        currentLocation.latitude, currentLocation.longitude);
    print('Address' +
        ' : ' +
        placemarks[0].street +
        ' ' +
        placemarks[0].subLocality +
        ' ' +
        placemarks[0].locality +
        ' ' +
        placemarks[0].country);
  }

  int calculate (){
    var one = int.parse(feet.toString());
    var price = 200 * one;
    return price;
  }
}
