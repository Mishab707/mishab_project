import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: drawer(),
    ),
  ));
}

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(image:DecorationImage(image: NetworkImage("https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v1016-c-08_1-ksh6mza3.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=f584d8501c27c5f649bc2cfce50705c0"),
              fit: BoxFit.fill)),
              accountName: Text("Mishab"),
              accountEmail: Text("mhdmishab000@gmail.com"),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("images/personal image.jpg")),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage("images/person image.png"),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("images/person image.png"),
                )
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.design_services),
              title: Text("Design"),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("About"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
