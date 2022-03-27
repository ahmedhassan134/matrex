import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test22/provider/cart_provider.dart';
import 'package:test22/view/screen2.dart';



import 'home_page.dart';

void main() => runApp(MyApp());

//give a navigator key to [MaterialApp] if you want to use the default navigation


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=>Cart(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        title: 'Flutter Demo',
        theme: ThemeData(appBarTheme: const AppBarTheme(centerTitle: true)),
        initialRoute: MyHomePage.id,
        routes: {
          MyHomePage.id:(context)=>MyHomePage(),
          ScreenTwo.id:(context)=>ScreenTwo()
        },

      ),
    );
  }
}
