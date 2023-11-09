import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>
        MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          home:Gridview(),
        ),
  ));
}
class Gridview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
         children: [
           Card(
             child: Image(image: AssetImage("images/person image.png"),),
           ),
           Card(
             child: Image(image: AssetImage("images/person image.png"),),
           ),
           Card(
             child: Image(image: AssetImage("images/person image.png"),),
           ),
         ],
     ),


    );
  }
}