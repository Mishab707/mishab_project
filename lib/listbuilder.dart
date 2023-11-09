import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Listbuilder(),
    ),
  ));
}

class Listbuilder extends StatelessWidget{
  var name=["MS","Mishab","sana","a","b","c"];
  var icon=[Icons.person,Icons.person,Icons.person];

  var phone=["3451531","154153","253135","5151631","151135","41514665"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
   body: ListView.builder(itemBuilder: (context ,index){
     return Card(
       child: ListTile(
         leading: Icon(Icons.person),
       title:Text(name[index]) ,
       subtitle:Text(phone[index]) ,
       trailing: Icon(Icons.call),
       ),

     );

   },itemCount: name.length,),
   );
  }

}