import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: stack(),
    ),
  ));
}
class stack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Stack(
       children: [
         Center(child:  Container(color: Colors.lightBlue,height: 800,width: 800,)),
         Container(color: Colors.yellowAccent,height: 600,width: 6000,),
         Container(color: Colors.greenAccent,height: 400,width: 400,),
         Container(color: Colors.redAccent,height: 200,width: 200,),
       ],
     ),
   );
  }


}