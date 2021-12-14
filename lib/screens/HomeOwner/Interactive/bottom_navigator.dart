import 'package:flutter/material.dart';
import 'package:fyp/screens/HomeOwner/Interactive/home_screen.dart';
import 'package:fyp/screens/HomeOwner/Interactive/profile_screen.dart';
import 'package:fyp/screens/HomeOwner/Interactive/tasks_details_screen.dart';
import 'package:fyp/screens/HomeOwner/Interactive/wallet_screen.dart';

class BottomNavigator extends StatefulWidget {
  static const String id = 'bottom_navigator';
  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator>
    with SingleTickerProviderStateMixin {
  var selectedItem = 0;

  List children = [
    HomeScreen(),
    TaskDetailsScreen(),
    WalletScreen(),
    ProfileScreen()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 27.0,
        currentIndex: selectedItem,
        onTap: (currIndex) {
          setState(() {
            selectedItem = currIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xFF5145C1),
            ),
            title: Padding(
              padding: EdgeInsets.symmetric(vertical: 2.0),
              child: Container(
                height: 5.0,
                width: 5.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFF5145C1)),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Color(0xFF5145C1),
            ),
            title: Padding(
              padding: EdgeInsets.symmetric(vertical: 2.0),
              child: Container(
                height: 5.0,
                width: 5.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFF5145C1)),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.library_books,
              color: Color(0xFF5145C1),
            ),
            title: Padding(
              padding: EdgeInsets.symmetric(vertical: 2.0),
              child: Container(
                height: 5.0,
                width: 5.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFF5145C1)),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Color(0xFF5145C1),
            ),
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Container(
                height: 5.0,
                width: 5.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFF5145C1)),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
