import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        backgroundColor: Colors.blue,
        actions: [TextButton(onPressed: () => {}, child: Text('Contact us'))],
      ),
      body:
          // Number
          Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 500,
          child: Text(
            'Email us @ '
            '\nhizqeeljaved2013@gmail.com\n'
            'ba79724@gmail.com\n'
            '\n\nCall us @'
            '\n03409140288\n03344026929',
            style: TextStyle(
              fontFamily: 'Nunito',
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
