import 'package:flutter/material.dart';

class TakeTest extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Take Test'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(child:Text('Upload Image') ,onPressed: ()=>{},)
        ),
      ),
    );;
  }
}
