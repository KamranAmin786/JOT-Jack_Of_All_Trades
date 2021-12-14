import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirebaseService {
  Future<void> insertProfessionalData({
    String userUid,
    String userName,
    String birthDate,
    String number,
    List skills,
    String cnicFront,
    String cnicBack,
    String accessToken
  }) async {
    var db = FirebaseFirestore.instance.collection('Professional');

    Map<String, dynamic> userData = {
      'userName': userName,
      'birthDate': birthDate,
      'phoneNumber': number,
      'skills': skills,
      'CnicFront': cnicFront,
      'cnicBack': cnicBack,
      'accessToken': accessToken,
    };

    await db.doc('$userUid').set(userData);

    SharedPreferences preferencesProfessional =
        await SharedPreferences.getInstance();
    preferencesProfessional.setString('userName', userName);
    preferencesProfessional.setString('userUid', userUid);
    preferencesProfessional.setString('birthDate', birthDate);
    preferencesProfessional.setStringList('skills', skills);
    preferencesProfessional.setString('phoneNumber', number);
  }
}

Future<void> getData() async {
  var fireStore = FirebaseFirestore.instance;
  QuerySnapshot querySnapshot =
      await fireStore.collection('MainServices').get();
  print(querySnapshot.docs);
  return querySnapshot.docs;
}
