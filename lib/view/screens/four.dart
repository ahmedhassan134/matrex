import 'package:flutter/material.dart';

class Four extends StatelessWidget {
  static String id = 'four';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('four'),
      ),
      body: Center(
        child: Text(
          'FOUR',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
