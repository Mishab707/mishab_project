import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: expand(),
    ),
  ));
}

class expand extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   body: Column(
     children: [
       Container(color: Colors.blueAccent,height: 100,),
       Expanded(child: Container(color: Colors.red,)),
       Expanded(child: Container(color: Colors.yellowAccent,)),
       Expanded(child: Container(color: Colors.greenAccent,)),
     ],
   ),
 );
  }

}