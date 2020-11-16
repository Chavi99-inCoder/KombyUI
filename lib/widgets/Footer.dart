import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kodmyui/Screens/FeaturedScreen.dart';
import 'package:kodmyui/Screens/LoginScreen.dart';
import 'package:kodmyui/Screens/ProfileScreen.dart';

class Footer extends StatefulWidget {

  Footer({Key key}): super(key: key);
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {

  PageController _pageController =PageController();
  List<Widget> _screen = [
     HomeScreen(), ProfileScreen()
  ];

  int _selectedIndex = 0;
  void _onPageChanged(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex){
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screen,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),


      ),
      bottomNavigationBar: CurvedNavigationBar(
        onTap: _onItemTapped,
        color: Colors.blue,
        backgroundColor: Colors.white,
        items: <Widget>[
          Icon(Icons.add),
          Icon(Icons.home),
          Icon(Icons.search),
        ],
      ),
    );
  }
}
