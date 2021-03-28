import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:proj21/homepage.dart';
import 'package:proj21/merchantregistration.dart';
import 'package:proj21/DriverRegistration.dart';


void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
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
        '/DriverRegistration': (BuildContext context) => new DriverRegistration(),

      },
      home: new HomePage(),
    );
  }
}


