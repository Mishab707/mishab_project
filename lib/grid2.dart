import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Gridae (),
    ),
  ));
}

class Gridae extends StatelessWidget{
  var image=["images/person image.png","images/person image.png","images/person image.png","images/person image.png","images/person image.png","images/person image.png",];
  var name=["Facebook","A10 Network INC","Intel corp","Advance micro device","Apple Inc","Amazon.com INC",];
  var rate=["€20","€30","€40","€50","€60","€70",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: List.generate(6, (index) {
              return Card(
                child: Column(
                  children: [
                    Image(image: AssetImage(image[index]),height :80,width :80,),
                    Row(
                      children: [
                        Text(name[index]),
                        SizedBox(width: 30,),
                        Text(rate[index]),
                      ],
                    ),
                  ],
                ),
              );
            },
            ),
            ));
    }

}