// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/link.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Container(
              child: Title(
                  color: Colors.black,
                  child: Text(
                    'Detection agent for Covid\n',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 30,
                    ),
                  )),
            ),
            Container(
              child: Text(
                'Covid-19 is continuously spreading around the world with more than 240 million cases around the world, just in Pakistan more than 1 million covid cases has been detected. Keeping this information in mind we need to figure out better ways to test people for covid-19, to be able to diagnose them for covid.Huge amount of data is available for covid patients such as their Chest CT-Scans,these chest CT-Scans could be used to develop a Machine Learning based model that can predict if a patient has Covid or not. We have created a mobile app that will allow the user to check their covid after uploading their CT scan and through this we can help everyone they wont have to stay in hospital just to get checked for that reason they will be more safe.',
                style: TextStyle(
                  color: Color.fromRGBO(39, 105, 171, 1),
                  fontFamily: 'Nunito',
                  fontSize: 19,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                child: Linkify(
                  onOpen: (link) => print("Clicked ${link.url}!"),
                  text: "Visit Our Website www.detectcovid.tech",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Nunito',
                    fontSize: 19,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
