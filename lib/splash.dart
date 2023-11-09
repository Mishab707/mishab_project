import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'loginpage.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Myapp(),
      )));
}
class Myapp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyappState();
}

class MyappState extends State<Myapp>{
  @override
  void initState() {
         Timer(Duration(seconds: 5), () {
           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage()));
         });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 250,right: 50,left: 50.0),
            child: Center(
              child: Column(
                children: [
                  Image(image: AssetImage("images/football logo pic.png"),height: 180,width: 180,),
                  Text(
                    "Welcome to flutter",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black87,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
          ),
        ));



  }
}