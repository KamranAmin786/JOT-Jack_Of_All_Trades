import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fyp/AppColors.dart';
import 'navigator.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('en', 'US'),
        Locale('ur', 'PK'),
      ],
      path: 'assets/translations',
      saveLocale: true,
      fallbackLocale: Locale('en', 'US'),
      child: FYP(),
    ),
  );
}

class FYP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Jack Of All Trades',
      home: WelcomeScreen(),
      theme: ThemeData(
        primarySwatch: mColorSwatch,
        fontFamily: 'Montserrat',
        textSelectionTheme: TextSelectionThemeData(
          selectionHandleColor: Colors.transparent,
        ),
      ),
    );
  }
}
