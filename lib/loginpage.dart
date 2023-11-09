import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mishab_project/splash.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Loginpage(),
      )));
}

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.create.vista.com/api/media/medium/22369587/stock-vector-abstract-vector-blue-background-yellow-lines?token="),
                fit: BoxFit.fill)),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image(
                image: AssetImage(
                  "images/img.png",
                ),
                height: 180,
                width: 180,
              ),
              SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Username",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1,color: Colors.black),
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 35),
                child: TextField(
                  obscureText: showpass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpass) {
                              showpass = false;
                            } else {
                              showpass = true;
                            }
                          });
                        },
                        icon: Icon(showpass == true
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              ElevatedButton(onPressed: () {}, child: Text("Login")),
              SizedBox(
                height: 35,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Create a new user",
                    style: GoogleFonts.aBeeZee(
                      fontSize: 23,
                      color: Colors.black,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
