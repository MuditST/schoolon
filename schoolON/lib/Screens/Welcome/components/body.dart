import 'package:flutter/material.dart';
import 'package:schoolON/Screens/Login/login_screen.dart';
import 'package:schoolON/Screens/TeacherLogin/TeacherLogin.dart';
import 'package:schoolON/Screens/Welcome/components/background.dart';
import 'package:schoolON/components/rounded_button.dart';
import 'package:schoolON/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Login/login_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome to schoolON",
              style: GoogleFonts.lato(
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/logo.svg",
              height: size.height * 0.2,
            ),
            Text(
              "How would you like to continue?",
              style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "STUDENT",
              color: Color(0xFF247acc),
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "TEACHER",
              color: kPrimaryColor,
              textColor: Colors.white,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TeacherLogin();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
