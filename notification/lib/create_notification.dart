import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:dotted_border/dotted_border.dart';

class CreateNotification extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<CreateNotification> {
  final _picker = ImagePicker();
  var imageFile;
  var checked = true;
  _getFromGallery() async {
    imageFile = await _picker.pickImage(source: ImageSource.gallery);
    if (imageFile != null) {
      setState(() {
        imageFile = File(imageFile.path);
        checked = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return initScreen();
  }

  Widget initScreen() {
    return Scaffold(
        backgroundColor: const Color(0xffF4F4F4),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(93),
            child: AppBar(
              backgroundColor: Colors.white,
              leading:
                  //

                  GestureDetector(
                      onTap: () {
                        _getFromGallery();
                      },
                      child: Container(
                          margin: const EdgeInsets.only(top: 35, left: 25),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ))),
              title: Container(
                  margin: const EdgeInsets.only(top: 35),
                  child: const Text("Create Notification",
                      style: TextStyle(
                        color: Color(0xff7A7A7A),
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        //fontWeight: FontWeight.bold,
                      ))),
            )),
        body: Column(
          children: [
            SizedBox(height: 20),
            GestureDetector(
                onTap: () {
                  _getFromGallery();
                },
                child: DottedBorder(
                  dashPattern: [8],
                  borderType: BorderType.RRect,
                  radius: Radius.circular(15),
                  strokeCap: StrokeCap.round,
                  child: Container(
                    //margin: const EdgeInsets.only(top: 25, left: 5),
                    alignment: Alignment.center,
                    //color: Colors.blue,
                    height: 120,
                    width: 345,
                    //padding: const EdgeInsets.all(7),
                    decoration: const BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: checked
                        ? const Text("+ Add Image",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              //fontWeight: FontWeight.bold,
                              backgroundColor: Color(0xffFFFFFF),
                            ))
                        : Image.file(
                            imageFile,
                            fit: BoxFit.fill,
                          ),
                  ),
                )),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 25, left: 25),
                  child: Icon(Icons.storage),
                ),
                Container(
                    width: 310,
                    //color: Colors.blue,
                    margin: EdgeInsets.only(top: 25, left: 20),
                    child: const TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                      style: TextStyle(fontSize: 14, fontFamily: 'Roboto'),
                    )),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 25, left: 25),
                  child: Icon(Icons.file_copy),
                ),
                Container(
                    width: 310,
                    //color: Colors.blue,
                    margin: EdgeInsets.only(top: 25, left: 20),
                    child: const TextField(
                      decoration: InputDecoration(labelText: 'Description'),
                      style: TextStyle(fontSize: 14, fontFamily: 'Roboto'),
                    )),
              ],
            ),
            Row(
              children: [
                Container(
                  // width: 310,
                  //color: Colors.blue,
                  margin: EdgeInsets.only(top: 25, left: 15),
                  child: const Checkbox(value: false, onChanged: null),
                ),
                Container(
                    //width: 310,
                    //color: Colors.blue,
                    margin: EdgeInsets.only(top: 25),
                    child: const Text("All",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          //fontWeight: FontWeight.bold,
                        ))),
                Container(
                  // width: 310,
                  //color: Colors.blue,
                  margin: EdgeInsets.only(top: 25, left: 10),
                  child: const Checkbox(value: false, onChanged: null),
                ),
                Container(
                    //width: 310,
                    //color: Colors.blue,
                    margin: EdgeInsets.only(top: 25),
                    child: const Text("Email",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          //fontWeight: FontWeight.bold,
                        ))),
                Container(
                  // width: 310,
                  //color: Colors.blue,
                  margin: EdgeInsets.only(top: 25, left: 10),
                  child: const Checkbox(value: false, onChanged: null),
                ),
                Container(
                    //width: 310,
                    //color: Colors.blue,
                    margin: EdgeInsets.only(top: 25),
                    child: const Text("App",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          //fontWeight: FontWeight.bold,
                        ))),
                Container(
                  // width: 310,
                  //color: Colors.blue,
                  margin: EdgeInsets.only(top: 25, left: 0),
                  child: const Checkbox(value: false, onChanged: null),
                ),
                Container(
                    //width: 310,
                    //color: Colors.blue,
                    margin: EdgeInsets.only(top: 25),
                    child: const Text("SMS",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          //fontWeight: FontWeight.bold,
                        ))),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 50),
                width: 184,
                height: 37,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Add Notification"),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff30B700),
                    onSurface: Colors.blue,
                  ), // set the background color
                ))
          ],
        ));
  }
}

class ImagePicker {
  pickImage({source}) {}
}
