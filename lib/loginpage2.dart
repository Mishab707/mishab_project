import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mishab_project/homepage.dart';
import 'package:mishab_project/splash.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Loginpagewithvalidation(),
      )));
}

class Loginpagewithvalidation extends StatefulWidget {
  @override
  State<Loginpagewithvalidation> createState() => _LoginpagevalidState();
}

class _LoginpagevalidState extends State<Loginpagewithvalidation> {
  GlobalKey<FormState>formkey=GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login with validate"),
      ),
      body: SingleChildScrollView(
        child: Container(
          //decoration: BoxDecoration(
            //  image: DecorationImage(
              //    image: NetworkImage(
                //      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLRNo_bHsrSlWriMErjnH3gy5Q--kSUr_-sg&usqp=CAU"),
                  //fit: BoxFit.fill)),
          child: Center(
              child: Form(
                key: formkey,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Image(
                    image: AssetImage(
                      "images/football logo pic.png",
                    ),
                    height: 180,
                    width: 180,
                  ),
                  SizedBox(height: 35),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: "Username",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1,color: Colors.black),
                              borderRadius: BorderRadius.circular(30))),
                    validator: (uname){
                        if (uname!.isEmpty|| !uname.contains('@')|| !uname.contains('.'))
                        {
                          return "please enter valid user name";
                        }
                        else
                        {
                          return null ;
                        }
                    }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50, top: 35),
                    child: TextFormField(
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
                   validator: (password)
                      {
                        if(password!.isEmpty|| password!.length<6)
                          {
                            return "please enter valid password";
                          }
                        else
                        {
                          return null ;
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),

                  ElevatedButton(onPressed: (){
                    final valid=formkey.currentState!.validate();
                    if(valid){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                    }
                  }, child: Text("login")),
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
        ),
      ),

    );
  }
}
