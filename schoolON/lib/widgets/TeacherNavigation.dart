import 'package:flutter/material.dart';
import 'package:schoolON/Screens/TeacherPage.dart';
import 'package:schoolON/Screens/TeacherProfile.dart';
import 'package:schoolON/Screens/TeacherTask.dart';
import 'package:schoolON/constants.dart';
import 'package:flutter_svg/svg.dart';

class TeacherNavigation extends StatefulWidget {
  @override
  _TeacherNavigationState createState() => _TeacherNavigationState();
}

class _TeacherNavigationState extends State<TeacherNavigation> {
  int _selectedTab = 0;
  Widget _currentPage;
  TeacherTask _teacherTask;
  TeacherPage _teacherPage;

  TeacherProfile _teacherProfile;

  List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _teacherTask = TeacherTask();
    _teacherPage = TeacherPage();
    _teacherProfile = TeacherProfile();
    _pages = [_teacherProfile, _teacherTask, _teacherPage];
    _currentPage = _teacherProfile;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Stack(
        children: <Widget>[
          _currentPage,
          _teacherNavigator(),
        ],
      ),
    );
  }

  _teacherNavigator() {
    return Stack(children: [
      Positioned(
          bottom: 0.0,
          right: 0.0,
          left: 0.0,
          child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
              child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: Theme.of(context).backgroundColor,
                  currentIndex: _selectedTab,
                  onTap: (int tab) {
                    setState(() {
                      _selectedTab = tab;
                      if (tab == 0 || tab == 1 || tab == 2) {
                        _currentPage = _pages[tab];
                      }
                    });
                  },
                  items: [
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        "assets/icons/link.svg",
                        width: 35.0,
                        color: _selectedTab == 0
                            ? Theme.of(context).accentColor
                            : kTextColor,
                      ),
                      label: 'Portal',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        "assets/icons/homework.svg",
                        width: 35.0,
                        color: _selectedTab == 1
                            ? Theme.of(context).accentColor
                            : kTextColor,
                      ),
                      label: 'Tasks',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        "assets/icons/comment.svg",
                        width: 35.0,
                        color: _selectedTab == 2
                            ? Theme.of(context).accentColor
                            : kTextColor,
                      ),
                      label: 'Profile',
                    )
                  ]))),
    ]);
  }
}
