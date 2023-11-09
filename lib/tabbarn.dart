import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Tabbarnew(),
    ),
  ));
}
class Tabbarnew extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 7,
      child: Scaffold(
        appBar: AppBar(title: Text("Random"),
          backgroundColor: Colors.green,
          bottom: TabBar(isScrollable:true,labelColor: Colors.black,tabs: [
            Tab(icon: Icon(Icons.home),text: "Home",),
            Tab(icon: Icon(Icons.account_balance),text: "Account",),
            Tab(icon: Icon(Icons.alarm),text: "Alaram",),
            Tab(icon: Icon(Icons.mail),text: "Mail",),
            Tab(icon: Icon(Icons.music_note),text: "Music",),
            Tab(icon: Icon(Icons.backup),text:"Backup",),
            Tab(icon: Icon(Icons.pedal_bike),text: "Bike",)
          ],),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.home),
            Icon(Icons.account_balance),
            Icon(Icons.alarm),
            Icon(Icons.mail),
            Icon(Icons.music_note),
            Icon(Icons.backup),
            Icon(Icons.pedal_bike),
          ],
        ),
      ),

    );
  }

}