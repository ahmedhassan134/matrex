import 'package:flutter/material.dart';
import 'package:custom_top_navigator/custom_top_navigator.dart';
import 'package:test22/view/screens/four.dart';
import 'package:test22/view/screens/one.dart';
import 'package:test22/view/screens/three.dart';
import 'package:test22/view/screens/two.dart';

import 'home_page.dart';

void main() => runApp(MyApp());

//give a navigator key to [MaterialApp] if you want to use the default navigation
//anywhere in your app eg: line 15 & line 93
GlobalKey<NavigatorState> mainNavigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: mainNavigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(appBarTheme: AppBarTheme(centerTitle: true)),
      home: MyHomePage(),
      routes: {
        // One.id:(context)=>One(),
        Two.id: (context) => Two(),
        Three.id: (context) => Three(),
        Four.id: (context) => Four()
      },
    );
  }
}
