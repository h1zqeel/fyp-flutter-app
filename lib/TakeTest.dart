import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TakeTest extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<TakeTest> {
  /// Variables
  var imageFile;

  /// Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Take Test"),
        ),
        body: Container(
            child: imageFile == null
                ? Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          color: Colors.greenAccent,
                          onPressed: () {
                            _getFromGallery();
                          },
                          child: Text("PICK FROM GALLERY"),
                        ),
                        Container(
                          height: 40.0,
                        ),
                        RaisedButton(
                          color: Colors.lightGreenAccent,
                          onPressed: () {
                            _getFromCamera();
                          },
                          child: Text("PICK FROM CAMERA"),
                        )
                      ],
                    ),
                  )
                : Container(
                    child: Image.file(
                      imageFile,
                      fit: BoxFit.cover,
                    ),
                  )));
  }

  /// Get from gallery
  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  /// Get from Camera
  _getFromCamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }
}

// import 'package:flutter/material.dart';
// import 'dart:io';
// import 'dart:convert';
// import 'package:image_picker/image_picker.dart';

// class TakeTest extends StatefulWidget {
//   @override
//   State<TakeTest> createState() => _TakeTestState();
// }



// class _TakeTestState extends State<TakeTest> {

// String status = '';
// _getFromGallery() async {
//     PickedFile? pickedFile = await ImagePicker().getImage(
//         source: ImageSource.gallery,
//         maxWidth: 64,
//         maxHeight: 64,
//     );
//     if (pickedFile != null) {
//         File file = File(pickedFile.path);
//     }
// }

// Widget showImage() {
//     return FutureBuilder<File>(
//       future: file,
//       builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
//         if (snapshot.connectionState == ConnectionState.done &&
//             null != snapshot.data) {
//           return Flexible(
//             child: Image.file(
//               snapshot.data,
//               fit: BoxFit.fill,
//             ),
//           );
//         } else if (null != snapshot.error) {
//           return const Text(
//             'Error Picking Image',
//             textAlign: TextAlign.center,
//           );
//         } else {
//           return const Text(
//             'No Image Selected',
//             textAlign: TextAlign.center,
//           );
//         }
//       },
//     );
//   }

// startUpload() {}
// Widget showImage() {
//   return Container();
// }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Upload Image Demo"),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(30.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             OutlinedButton(
//               onPressed: chooseImage,
//               child: Text('Choose Image'),
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             showImage(),
//             SizedBox(
//               height: 20.0,
//             ),
//             OutlinedButton(
//               onPressed: startUpload,
//               child: Text('Upload Image'),
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             Text(
//               status,
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: Colors.green,
//                 fontWeight: FontWeight.w500,
//                 fontSize: 20.0,
//               ),
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
