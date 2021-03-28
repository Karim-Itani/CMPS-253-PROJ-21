import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:proj21/homepage.dart';
import 'package:proj21/merchantregistration.dart';
import 'package:proj21/driverregistration.dart';
import 'package:proj21/loginscreen.dart';
import 'package:proj21/otp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Delivery App',
      routes: <String, WidgetBuilder> {
        '/HomePage': (BuildContext context) => new HomePage(),
        '/MerchantRegistration': (BuildContext context) => new MerchantRegistration(),
        '/driverregistration': (BuildContext context) => new driverregistration(),

      },
      home: new HomePage(),
    );
  }
}


