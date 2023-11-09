import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: lottieeg(),
      )));
}

class lottieeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: ListView(
      children: [
        Lottie.asset("Animation/animation_lnybq1fs.json"),
        Lottie.network("https://images.unsplash.com/photo-1611643378160-39d6dd915b69?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YW5pbWF0aW9ufGVufDB8fDB8fHww")
      ],
    ),
  );
  }

}