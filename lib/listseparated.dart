import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Listseparated(),
    ),
  ));
}

class Listseparated extends StatelessWidget{
  var name=["Mishab","Rashad","Sana"];
  var icon=[Icons.person,Icons.person,Icons.person];
  var phone=["89267541793","165641717","6346327483"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:ListView.separated(itemBuilder: (context,index){
          return Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text(name[index]),
              subtitle: Text(phone[index]),
              trailing: Icon(Icons.call),
            ),
          );
        }, separatorBuilder: (context,index){
          return Divider(
            thickness: 5,
            color: Colors.red,
          );
        }, itemCount: icon.length),
        );
    }

}