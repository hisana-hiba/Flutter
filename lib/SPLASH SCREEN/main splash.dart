import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Next page.dart';


void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: splashscreen(

  )
  ),);
}
class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState(){
    Timer(Duration(seconds: 5), (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>NextPage()));

    });

  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Splash Screen"),),
      body: Container(
        child: Center(
          child: Image(image: AssetImage("assets/images/pic 5.jpg"),
            height: 1200,width: 1000,
          ),
        ),
      ),
    );
  }
}