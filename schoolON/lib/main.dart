import 'package:flutter/material.dart';

import 'package:schoolON/Screens/Welcome/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'schoolON',
        theme: ThemeData(
          primaryColor: Color(0xFFf4f6fd),
          accentColor: Color(0xFF247acc),
          backgroundColor: Color(0xFFFFFFFF),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: WelcomeScreen());
  }
}
