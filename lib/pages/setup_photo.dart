import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:pad_project/pages/setup_nickname.dart';

class SetUpPhotonPage extends StatefulWidget {
  const SetUpPhotonPage({super.key, required this.title});

  final String title;

  @override
  State<SetUpPhotonPage> createState() => _SetUpPhotonPageState();
}

class _SetUpPhotonPageState extends State<SetUpPhotonPage> {

  final picker = ImagePicker();
  File? _image;
  
  Future getImageFromGallery() async {
   final pickedFile = await picker.pickImage(source: ImageSource.gallery);

   setState(() {
    if (pickedFile != null) {
     _image = File(pickedFile.path);
    }
   });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            (const Text(
              'Upload your profile photo',
              style: TextStyle(
                  color: Colors.pink,
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            )),
            const SizedBox(height: 60,),
            const Text(
              'Take a new photo or upload from your library \n to set your profile photo.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20,),
           ClipRRect(
            borderRadius: BorderRadius.circular(1000),
            child: InkWell(
              onTap: () async {
                await getImageFromGallery();
              },
              child:Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),color: Colors.grey[100]),
              child: (_image != null) ?
                     Image.file(_image!) : Center(
                child: Icon(Icons.camera,color: Colors.grey,),
              ),))),
              const SizedBox(height: 30,),
           ElevatedButton(
              onPressed: () {
                 Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return SetupNickNamePage(title: widget.title,);
        },
      ),
    );
              },
              child:Padding(
                padding: EdgeInsets.only(left: 120,right: 120),
                child: Text("Next")),
              style: TextButton.styleFrom(
                  primary: Colors.white, backgroundColor: Colors.pink),
            ),
          ],
        ),
      ),
    );
  }
}
