import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class nextPage extends StatefulWidget {
  const nextPage({super.key});

  @override
  State<nextPage> createState() => _nextPageState();
}

class _nextPageState extends State<nextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(""),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text("Welcome"))
        ],
      ),
    );
  }
}
