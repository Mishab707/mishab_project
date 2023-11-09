import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'package:flutter_swiper_view/flutter_swiper_view.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  final List<OnboardingItem> onboardingItems = [
    OnboardingItem(
        "Welcome to MyApp", "This is a sample onboarding screen.", Icons.star),
    OnboardingItem("Explore Features",
        "Discover the amazing features of our app.", Icons.explore),
    OnboardingItem("Get Started", "It's time to get started and enjoy our app.",
        Icons.play_arrow),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Swiper(
        itemCount: onboardingItems.length,
        itemBuilder: (BuildContext context, int index) {
          return OnboardingPage(
            item: onboardingItems[index],
          );
        },
      ),
    );
  }
}

class OnboardingItem {
  final String title;
  final String description;
  final IconData icon;

  OnboardingItem(this.title, this.description, this.icon);
}

class OnboardingPage extends StatelessWidget {
  final OnboardingItem item;

  OnboardingPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          item.icon,
          size: 100.0,
          color: Colors.blue,
        ),
        SizedBox(height: 20.0),
        Text(
          item.title,
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.0),
        Text(
          item.description,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }
}
