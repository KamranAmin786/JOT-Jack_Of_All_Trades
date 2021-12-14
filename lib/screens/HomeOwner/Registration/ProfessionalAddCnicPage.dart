import 'package:flutter/material.dart';
import 'package:fyp/AppAsset/AppColors.dart';
import 'package:fyp/widget/PrimaryButton.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io' as i;

class ProfessionalAddCnicPage extends StatefulWidget {
  @override
  _ProfessionalAddCnicPageState createState() =>
      _ProfessionalAddCnicPageState();
}

class _ProfessionalAddCnicPageState extends State<ProfessionalAddCnicPage> {
  i.File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = i.File(pickedFile.path);
      } else {
        print('No image selected');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'JOT',
          style: TextStyle(color: colorWhite, fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
          child: Icon(
            Icons.arrow_back_ios_outlined,
            color: colorWhite,
          ),
          onTap: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Take a photo of your CNIC \n Back Side',
              style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            _image == null ? Center(
              child: Container(
                width: 280.0,
                height: 200.0,
                child: Image.asset('images/CNIC-Nadra.jpg'),
              ),
            ):Center(
              child: Container(
                width: 300.0,
                height: 200.0,
                child: Image.file(_image, fit: BoxFit.fill),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
           _image == null ? Center(
                child: PrimaryButton(
              text: 'Take Photo',
              onPressed: getImage,
            )):
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: <Widget>[
                   PrimaryButton(
                     width: MediaQuery.of(context).size.width*0.4,
                     onPressed: getImage,
                     text: 'Again',
                   ),
                   PrimaryButton(
                     width: MediaQuery.of(context).size.width*0.4,
                     text: 'Done',
                     onPressed: (){
                       Navigator.of(context).pop(_image);
                     },
                   ),
                 ],
               ),
          ],
        ),
      ),
    ));
  }
}
