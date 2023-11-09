import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';
void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Bottomnav(),
    ),
  ));
}

class Bottomnav extends StatefulWidget{
  @override

  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  @override
  var screen=[
    Loginpage(),
    Loginpage(),
    Loginpage(),
    Loginpage(),
    Loginpage(),

  ];
  int index=2;
  Widget build(BuildContext context) {
return Scaffold(
  bottomNavigationBar: BottomNavigationBar(
    backgroundColor: Colors.greenAccent,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.black,
    currentIndex: index,
      onTap: (tapndx){
      setState(() {
        index=tapndx;
      });
      },
    items: [

      BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.lightBlue[200]),
      BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite",backgroundColor: Colors.lightBlue[200]),
      BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "Account",backgroundColor: Colors.lightBlue[200]),
      BottomNavigationBarItem(icon: Icon(Icons.logout),label: "Logout",backgroundColor: Colors.lightBlue[200]),
    ],
  ),
  body: screen[index],
);
  }
}

