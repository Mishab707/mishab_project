import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';


void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: MyRiveAnimation(),
      )));
}
class MyRiveAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: RiveAnimation.network(
          'Animation/animation touch.riv',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}