import 'package:custom_top_navigator/custom_scaffold.dart';
import 'package:custom_top_navigator/custom_top_navigator.dart';
import 'package:flutter/material.dart';
import 'package:test22/view/screens/five.dart';
import 'package:test22/view/screens/four.dart';
import 'package:test22/view/screens/one.dart';
import 'package:test22/view/screens/three.dart';
import 'package:test22/view/screens/two.dart';

class MyHomePage extends StatefulWidget {
  // static String id='homepage';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  // Custom navigator takes a global key if you want to access the
  // navigator from outside it's widget tree subtree
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      scaffold: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.branding_watermark_outlined),
                  label: 'Brands'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: 'Favourite'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_alert), label: 'Message'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.more_horiz), label: 'More'),
            ],
            selectedItemColor: Colors.greenAccent,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.grey),
      ),
      children: [One(), Two(), Three(), Four(), Five()],
      onItemTap: (index) {
        _currentIndex = index;
      },
    );
  }
}
