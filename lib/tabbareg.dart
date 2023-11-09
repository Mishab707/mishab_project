import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: tabbareg(),
    ),
  ));
}
class tabbareg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(title: Text("Whatsapp"),
        backgroundColor: Colors.green,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Icon(Icons.search),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Icon(Icons.camera_alt),
          ),
          PopupMenuButton(itemBuilder: (context){
            return[
              PopupMenuItem(child: Text("Settings")),
              PopupMenuItem(child: Text("Help")),
              PopupMenuItem(child: Text("Invite")),
            ];

      },),
        ],
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.camera),),
        Tab(child: Text("Chat"),),
        Tab(child: Text("Contacts"),),
        Tab(child: Text("Status"),),




          ],),
      ),
        body: TabBarView(children: [
          
        ],),
      ),
    );
  }

}