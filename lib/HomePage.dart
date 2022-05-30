import 'package:flutter/material.dart';
import 'NavDrawer.dart';
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue,
        actions: [
          TextButton(onPressed: ()=>{
          }, child: Text('Contact us'))
        ],
      ),
      body: Container(
        child: Text('Page 2'),
      ),
    );
  }
}
