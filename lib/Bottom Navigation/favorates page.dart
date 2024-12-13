import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class favorates extends StatefulWidget {
  const favorates({super.key});

  @override
  State<favorates> createState() => _favoratesState();
}

class _favoratesState extends State<favorates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
        Text("Favorates",style: TextStyle(fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text("favorate"),
          )
        ],
      ),
    );
  }
}
