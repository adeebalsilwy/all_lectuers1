import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Image_screen extends StatefulWidget {
  @override
  State<Image_screen> createState() => Image_screenState();
  static const rout_name = "/Image_screen";
}

class Image_screenState extends State<Image_screen> {
  PickedFile? imageFile_hq = null;
  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Choose option",
              style: TextStyle(color: Colors.blue),
            ),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  Divider(
                    height: 1,
                    color: Colors.blue,
                  ),
                  ListTile(
                    onTap: () {
                      _openGallery(context);
                    },
                    title: Text("Gallery"),
                    leading: Icon(
                      Icons.account_box,
                      color: Colors.blue,
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.blue,
                  ),
                  ListTile(
                    onTap: () {
                      _openCamera(context);
                    },
                    title: Text("Camera"),
                    leading: Icon(
                      Icons.camera,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ImagePickerApp"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                child: (imageFile_hq == null)
                    ? Text("No Image selected plz choose Image ")
                    : Image.file(File(imageFile_hq!.path)),
              ),
              MaterialButton(
                textColor: Colors.white,
                color: Colors.black45,
                onPressed: () {
                  _showChoiceDialog(context);
                },
                child: Text("Select Image to Show"),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _openGallery(BuildContext context) async {
    final PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    setState(() {
      imageFile_hq = pickedFile!;
    });

    Navigator.pop(context);
  }

  void _openCamera(BuildContext context) async {
    final PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
    );
    setState(() {
      imageFile_hq = pickedFile!;
    });
    Navigator.pop(context);
  }
}
