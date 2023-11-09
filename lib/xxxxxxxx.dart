import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Bottombar(),
      )));
}

class Bottombar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      bottomNavigationBar: ConvexAppBar(
      items: [
      TabItem(icon: Icons.home, title: 'Home'),
    TabItem(icon: Icons.map, title: 'Discovery'),
    TabItem(icon: Icons.add, title: 'Add'),
    TabItem(icon: Icons.message, title: 'Message'),
    TabItem(icon: Icons.people, title: 'Profile'),
    ],
        onTap: (int i) => print('click index=$i'),
  ),);
  }

}