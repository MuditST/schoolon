import 'package:flutter/material.dart';
import 'package:schoolON/Screens/MainPage.dart';
import 'package:schoolON/Screens/Profile.dart';
import 'package:schoolON/Screens/classes_screen.dart';
import 'package:schoolON/Screens/home_screen.dart';
import 'package:schoolON/constants.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedTab = 0;
  Widget _currentPage;
  HomeScreen _homeScreen;
  ClassesScreen _classesScreen;
  MainPage _mainPage;
  Profile _profile;
  List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _homeScreen = HomeScreen();
    _classesScreen = ClassesScreen();
    _mainPage = MainPage();
    _profile = Profile();
    _pages = [_homeScreen, _classesScreen, _mainPage, _profile];
    _currentPage = _homeScreen;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Stack(
        children: <Widget>[
          _currentPage,
          _bottomNavigator(),
        ],
      ),
    );
  }

  _bottomNavigator() {
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
                      if (tab == 0 || tab == 1 || tab == 2 || tab == 3) {
                        _currentPage = _pages[tab];
                      }
                    });
                  },
                  items: [
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        "assets/icons/house.svg",
                        width: 35.0,
                        color: _selectedTab == 0
                            ? Theme.of(context).accentColor
                            : kTextColor,
                      ),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        "assets/icons/homework.svg",
                        width: 35.0,
                        color: _selectedTab == 1
                            ? Theme.of(context).accentColor
                            : kTextColor,
                      ),
                      label: 'Classes',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        "assets/icons/read_book.svg",
                        width: 35.0,
                        color: _selectedTab == 2
                            ? Theme.of(context).accentColor
                            : kTextColor,
                      ),
                      label: 'Courses',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        "assets/icons/comment.svg",
                        width: 35.0,
                        color: _selectedTab == 3
                            ? Theme.of(context).accentColor
                            : kTextColor,
                      ),
                      label: 'Profile',
                    )
                  ]))),
    ]);
  }
}
