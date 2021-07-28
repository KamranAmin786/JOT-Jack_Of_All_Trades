import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp/constants.dart';

class WalletScreen extends StatelessWidget {
  static const String id = 'wallet_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: kAppBackgroundColor,
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(
                            'Help',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Text(
                            'PKR 0',
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Available credit'),
                      ],
                    ), //Text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 20.0, right: 10.0),
                          child: Container(
                            height: 80.0,
                            width: 80.0,
                            child: Card(
                              elevation: 10.0,
                              color: Colors.white,
                              child: Center(
                                child: Icon(
                                  Icons.wallet_giftcard_rounded,
                                  size: 30.0,
                                  color: kAppIconsColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0, left: 10.0),
                          child: Container(
                            height: 80.0,
                            width: 80.0,
                            child: Card(
                              elevation: 10.0,
                              color: Colors.white,
                              child: Center(
                                child: Icon(
                                  CupertinoIcons.money_dollar,
                                  size: 30.0,
                                  color: kAppIconsColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text(
                            'Add',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                        ),
                        SizedBox(
                          width: 50.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0, left: 13.0),
                          child: Text(
                            'Send',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 25, horizontal: 30.0),
                      child: Card(
                        color: Colors.white,
                        elevation: 10.0,
                        child: ListTile(
                          title: Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              'HELP FIGHT COVID-19',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          subtitle: Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Support your community during this crisis',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ),
                          leading: Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Icon(
                              Icons.help_center_outlined,
                              size: 30.0,
                              color: kAppIconsColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Card(
                        elevation: 0.0,
                        child: ListTile(
                          title: Text('Card and accounts'),
                          subtitle:
                              Text('All your payments methods in one place'),
                          trailing: Icon(Icons.keyboard_arrow_right_outlined),
                          leading: Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: CircleAvatar(
                              backgroundColor: kWalletScreenAppIconBackground,
                              child: Icon(
                                Icons.credit_card_outlined,
                                color: kAppIconsColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Divider(
                        color: Colors.grey,
                        thickness: 3.0,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 15.0, bottom: 15.0, left: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'FRI, MAR 12',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      elevation: 0.0,
                      child: ListTile(
                        title: Text('AC Installation'),
                        subtitle: Text(
                          '02:57 PM | JOT',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15.0,
                              letterSpacing: 1.25),
                        ),
                        trailing: Text(
                          '- PKR 0.27',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15.0,
                              letterSpacing: 1.25),
                        ),
                        leading: Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: CircleAvatar(
                            backgroundColor: kWalletScreenAppIconBackground,
                            child: Icon(
                              Icons.handyman,
                              color: kAppIconsColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Divider(
                        color: Colors.grey,
                        thickness: 2.0,
                      ),
                    ),
                    Card(
                      elevation: 0.0,
                      child: ListTile(
                        title: Text('Credit Added'),
                        subtitle: Text(
                          '10:15 PM | JOT Pay',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15.0,
                              letterSpacing: 1.25),
                        ),
                        trailing: Text(
                          '+ PKR 0.27',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15.0,
                              letterSpacing: 1.25),
                        ),
                        leading: Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: CircleAvatar(
                            backgroundColor: kWalletScreenAppIconBackground,
                            child: Icon(
                              Icons.money,
                              color: kAppIconsColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Divider(
                        color: Colors.grey,
                        thickness: 2.0,
                      ),
                    ),
                    Card(
                      elevation: 0.0,
                      child: ListTile(
                        title: Text('Plumber'),
                        subtitle: Text(
                          '10:15 PM | JOT',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15.0,
                              letterSpacing: 1.25),
                        ),
                        trailing: Text(
                          '- PKR 0.27',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15.0,
                              letterSpacing: 1.25),
                        ),
                        leading: Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: CircleAvatar(
                            backgroundColor: kWalletScreenAppIconBackground,
                            child: Icon(
                              Icons.handyman,
                              color: kAppIconsColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
