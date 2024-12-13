import 'package:flutter/material.dart';

class whatsappchat extends StatefulWidget {
  const whatsappchat({super.key});

  @override
  State<whatsappchat> createState() => _whatsappchatState();
}

class _whatsappchatState extends State<whatsappchat> {



  var name = [
    "anu",
    "finu",
    "nafi",
    "rinu",
    "achi",
    "raash",
    "appu",
    "ramshi",
    "paathu",
    "hanna",
    "rumali",
    "fasla"
  ];
  var text = [
    "hii",
    "hlo",
    "kooi",
    "evdeya",
    "nthella",
    "sugano",
    "Do",
    "inj....",
    "ooi",
    "8765432309",
    "hyyyy",
    "vilik to"
  ];
  var values=["10:32","11:08","yesterday","yesterday","yesterday",
    "yesterday","yesterday","yesterday","yesterday","2:35","yesturday","1:00"];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        body: ListView.custom(
            childrenDelegate: SliverChildBuilderDelegate(
                  (context,index){
                return Container(
                  child: ListTile(
                    leading: CircleAvatar (
                    ),
                    title: Text(name[index]),
                    subtitle: Text(text[index]),
                    trailing: Text("${values[index]}"),
                  ),
                );
              }, childCount: name.length,
            )

        )
    );
  }
}