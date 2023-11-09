import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          home: Homepage(),
          ),
      ));
}

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("list view"),),
      body: ListView(
        children: [
          Card(color: Colors.deepPurpleAccent,
            child: ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("images/call image.png"),),
              title: Text("Ms"),
              subtitle: Text("9562120334"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: Colors.indigo,
            child: ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("images/call image.png"),),
              title: Text("sana"),
              subtitle: Text("9946011488"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: Colors.green,
            child: ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("images/call image.png"),),
              title: Text("Nahla"),
              subtitle: Text("8943493355"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: Colors.amber,
            child: ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("images/call image.png"),),
              title: Text("Rashad"),
              subtitle: Text("9847724872"),
              trailing: Icon(Icons.call),
            ),
          ),
        ],
      ),
    );

  }

}