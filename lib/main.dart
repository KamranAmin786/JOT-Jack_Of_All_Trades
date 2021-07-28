import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fyp/screens/HomeOwner/Interactive/bottom_navigator.dart';
import 'package:fyp/screens/HomeOwner/Interactive/home_screen.dart';
import 'package:fyp/screens/HomeOwner/Interactive/profile_screen.dart';
import 'package:fyp/screens/HomeOwner/Interactive/service_screen.dart';
import 'package:fyp/screens/HomeOwner/Interactive/task_assignment_screen.dart';
import 'package:fyp/screens/HomeOwner/Interactive/tasks_details_screen.dart';
import 'package:fyp/screens/HomeOwner/Interactive/wallet_screen.dart';
import 'package:fyp/screens/HomeOwner/SignIn/homeowner_signin_screen.dart';
import 'package:fyp/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FYP());
}

class FYP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        ProfileScreen.id: (context) => ProfileScreen(),
        TaskDetailsScreen.id: (context) => TaskDetailsScreen(),
        WalletScreen.id: (context) => WalletScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        ServiceScreen.id: (context) => ServiceScreen(),
        TaskAssignment.id: (context) => TaskAssignment(),
        BottomNavigator.id: (context) => BottomNavigator(),
        HomeownerSignIn.id: (context) => HomeownerSignIn(),
      },
      title: 'Jack Of All Trades',
      home: WelcomeScreen(),
    );
  }
}
