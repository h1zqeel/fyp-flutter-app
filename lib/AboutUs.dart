import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          child: Text('About Us'),
        ),
      ),
    );;
  }
}
