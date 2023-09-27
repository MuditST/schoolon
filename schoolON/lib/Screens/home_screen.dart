import 'package:flutter/material.dart';
import 'package:schoolON/constants.dart';
import 'package:schoolON/widgets/header.dart';
import 'package:schoolON/widgets/recents_alerts.dart';
import 'package:schoolON/widgets/recents_homeworks.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Header(),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: TextField(
          style: TextStyle(color: kTextColor),
          cursorColor: kTextColor,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(8.0),
            fillColor: Theme.of(context).primaryColor,
            filled: true,
            hintText: "Search",
            hintStyle: TextStyle(color: kTextColor),
            prefixIcon: Icon(Icons.search, color: kTextColor, size: 26.0),
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(color: Color(0xFF247acc))),
          ),
        ),
      ),
      SizedBox(
        height: 30.0,
      ),
      Container(
          padding: EdgeInsets.all(35.0),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Recent Alerts",
                style: GoogleFonts.quicksand(
                  color: kTextColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 28.0,
              ),
              RecentsAlerts(),
              Center(
                child: Text(
                  "View all",
                  style: TextStyle(
                      color: Theme.of(context).accentColor, fontSize: 15.0),
                ),
              ),
              SizedBox(
                height: 28.0,
              ),
              Text("Recent Homework",
                  style: GoogleFonts.quicksand(
                      color: kTextColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 30.0),
              RecentHomeworks(),
              Center(
                child: Text(
                  "View all",
                  style: TextStyle(
                      color: Theme.of(context).accentColor, fontSize: 15.0),
                ),
              ),
              SizedBox(
                height: 55.0,
              ),
            ],
          ))
    ]);
  }
}
