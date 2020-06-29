import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp98/sign_in/sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      title: 'Hack20',
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}
