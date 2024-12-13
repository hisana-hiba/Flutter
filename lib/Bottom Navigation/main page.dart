

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'category page.dart';
import 'favorates page.dart';
import 'home pages.dart';


void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: HomeScreen(),));
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex = 0;

  final List<Widget> pages = [
    home(), // Pass a valid email
    category(),
    favorates(),

  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),


        ],
      ),
    );
  }
}
