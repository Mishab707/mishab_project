import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: res (),
    ),
  ));
}


class res extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
            slivers: [
              SliverAppBar( expandedHeight: 130,
                backgroundColor: Colors.cyan,
                leading: Icon(Icons.menu),
                title: Center(
                  child: Text("Type your Location"),
                ),
                actions: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
                ],
                bottom: AppBar(backgroundColor: Colors.cyan,
                  elevation: 0,
                  title: Container(
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25),),
                    child: TextField(
                      decoration: InputDecoration(hintText: "Search location",suffixIcon: Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(

                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                      ),

                    ),
                  ),
                ),
              ),
              SliverList(delegate: SliverChildListDelegate([
                Container(
                  child: Stack(
                    children: [
                      Positioned(child: Container(child: Text("Hotel"),color: Colors.pinkAccent,)),
                    ],
                  ),
                ),
              ])),
            ],
            ),
        );
    }

}