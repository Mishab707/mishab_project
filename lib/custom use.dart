import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom widget.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: custemeg(),
      )));
}
class custemeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(
     title: Text("vfs"),

   ),
   body: Container(
    child: custemwidget(
      onpress: (){

      },
      img: Image(image: AssetImage("images/personal image.jpg"),),
      name: Text("Mishab"),
      bgcolor: Colors.blueAccent,
    ),
   ),
 );
  }

}