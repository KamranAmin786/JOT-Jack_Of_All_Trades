import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  Future<void> insertData(
      {String userUid,
      String userName,
      String birthDate,
      String email,
      String gender}) async {
    var db = FirebaseFirestore.instance.collection('Homeowner');

    Map<String, dynamic> userData = {
      'userName': userName,
      'birthDate': birthDate,
      'email': email,
      'gender': gender,
    };

    await db.doc('$userUid').set(userData);
  }

  Future<void> getData () async {
    var fireStore = FirebaseFirestore.instance;
    QuerySnapshot querySnapshot = await fireStore.collection('MainServices').get();
    return querySnapshot.docs;
  }
}
