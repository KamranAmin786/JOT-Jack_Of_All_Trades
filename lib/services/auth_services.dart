import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fyp/screens/HomeOwner/Interactive/bottom_navigator.dart';
import 'package:fyp/welcome_screen.dart';

class AuthService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  // handles auth
  handleAuth() {
    return StreamBuilder(
        stream: firebaseAuth.authStateChanges(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return BottomNavigator();
          } else {
            return WelcomeScreen();
          }
        });
  }

  // sign out
}
