import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  Future<void> insertHomeownerData(
      {String userUid,
      String userName,
      String birthDate,
      String email,
        String number,
      String gender}) async {
    var db = FirebaseFirestore.instance.collection('Homeowner');

    Map<String, dynamic> userData = {
      'userName': userName,
      'birthDate': birthDate,
      'email': email,
      'gender': gender,
      'phoneNumber': number,
    };

    await db.doc('$userUid').set(userData);
  }

  // Future<void> insertProfessionalData(
  //     {String userUid,
  //       String userName,
  //       String birthDate,
  //       String number,
  //       }) async {
  //   var db = FirebaseFirestore.instance.collection('Professional');
  //
  //   Map<String, dynamic> userData = {
  //     'userName': userName,
  //     'birthDate': birthDate,
  //     'phoneNumber': number,
  //     'skills' :
  //   };
  //
  //   await db.doc('$userUid').set(userData);
  // }

  Future<void> getData () async {
    var fireStore = FirebaseFirestore.instance;
    QuerySnapshot querySnapshot = await fireStore.collection('MainServices').get();
    return querySnapshot.docs;
  }
}
