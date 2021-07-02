import 'package:flutter/material.dart';
import 'package:paytron_app/ui/Account.dart';
import 'package:paytron_app/ui/AddBank.dart';
import 'package:paytron_app/ui/BankAccount.dart';
import 'package:paytron_app/ui/Contact.dart';
import 'package:paytron_app/ui/Plan.dart';
import 'package:paytron_app/ui/Recharge.dart';
import 'package:paytron_app/ui/Self.dart';
import '/constant/Constant.dart';
import '/ui/phonepe.dart';
import '/ui/splashscreen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,

      home: SplashScreen(),
      theme: new ThemeData(primaryColor: Colors.blue[800],
      ),
      routes: <String, WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
        PHONE_PE: (BuildContext context) => FlutterDevs(),
      },
    );
  }
}