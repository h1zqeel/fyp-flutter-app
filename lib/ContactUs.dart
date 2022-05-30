import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        backgroundColor: Colors.blue,
        actions: [
          TextButton(onPressed: ()=>{
          }, child: Text('Contact us'))
        ],
      ),
      body: Container(
        child: Text('Hizqeel Gandu'),
      ),
    );
  }
}
