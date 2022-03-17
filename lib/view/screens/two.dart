import 'package:flutter/material.dart';

class Two extends StatelessWidget {
  static String id = 'two';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('two'),
      ),
      body: Center(
        child: Text(
          'Two',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
