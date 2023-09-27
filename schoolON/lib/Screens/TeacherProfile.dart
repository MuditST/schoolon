import 'package:flutter/material.dart';

class TeacherProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/portal.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
