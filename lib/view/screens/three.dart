import 'package:flutter/material.dart';

class Three extends StatelessWidget {
  static String id = 'three';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('three'),
      ),
      body: Center(
        child: Text(
          'THREE',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
