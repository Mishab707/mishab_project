import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>
        MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          home: Listviewbuild(),
        ),
  ));
}

class Listviewbuild extends StatelessWidget {
  var name=["Nokia","Samsung","Iphone","Sony","Realme","Xiaomi","Asus","Oppo","Vivo","Lenovo","Lava","Lg","Honor","Htc"];
  var amount=["€50","€90","€99","€20","€35","€40","€30","€44","€45","€50","€32","€42","€43","€52"];
  var icons=["N","S","I","S","R","X","A","O","V","L","L","L","H","H"];
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text("Listviewbuild"),),
        body: ListView.builder(itemBuilder: (context,index){
      return Card(
        child: ListTile(
          leading: CircleAvatar(child: Text(icons[index]),backgroundColor: Colors.indigoAccent,),
          title: Text(name[index]),
          trailing: Text(amount[index]),
        ),
      );

    },itemCount: name.length,
    ));

  }

}