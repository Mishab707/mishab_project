import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Listviewcustoms(),
    ),
  ));
}

class Listviewcustoms extends StatelessWidget {
  var name = ["Mishab", "Rashad", "Sana","Nandana","Siyad",];
  var icon = [Icons.person, Icons.person, Icons.person, Icons.person,Icons.person];
  var phone = ["89267541793", "165641717", "6346327483","561511351","64513515"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List view customs"),backgroundColor: Colors.indigoAccent,),
      body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.person,),
                title:Text(name[index]) ,
                subtitle:Text(phone[index]) ,
                trailing: Icon(Icons.call),
              ),

            );

          },childCount: name.length,
          )),
    );
  }
}
