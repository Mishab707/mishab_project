import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Gridviewcustom(),
    ),
  ));
}

class Gridviewcustom extends StatelessWidget {
  var images = [
    "images/person image.png",
    "images/person image.png",
    "images/person image.png",
    "images/person image.png",
    "images/person image.png",
    "images/person image.png",
  ];
  var name = [
    "ms",
    "mmishab",
    "sana",
    "michu",
    "nehla",
    "anaz",
  ];
  var rate = ["1", "5", "6", "9", "4", "3"];

  @override
  Widget build(BuildContext context) {
        return Scaffold(
      body: GridView.custom(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              mainAxisSpacing: 20,crossAxisSpacing: 20),
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(,
                child: Column(
                  children: [
                    Expanded(child: Image(image: AssetImage(images[index]),fit: BoxFit.fill,)),
                    SizedBox(height: 20,),
                    Row(
                    children :[
                      SizedBox(width: 100,),
                      Text(name[index]),
                      SizedBox(width: 5,),
                      Text(rate[index]),
                     ],
                    )

                  ],
                ),
              );
            },childCount: images.length,
          )),
    );
  }
}
