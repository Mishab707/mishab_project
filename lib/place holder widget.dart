import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: placeholder(),));
}
class placeholder extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
              height: 200,
              width: 200,
              child: Placeholder(
              ),
            ),
            ),
        );
    }

}