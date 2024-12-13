
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readky/LOCAL%20STRG%20SHrd%20pref/sp%20login.dart';
import 'package:shared_preferences/shared_preferences.dart';




class Register extends StatefulWidget{
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  late SharedPreferences data;

  TextEditingController name_controller=TextEditingController();

  TextEditingController usernam_controller=TextEditingController();
  TextEditingController  password_controller=TextEditingController();

  @override
  void dispose() {
    name_controller.dispose();
    usernam_controller.dispose();
    password_controller.dispose();

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Shared Pref"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              "Login Page",
              style: TextStyle(fontSize: 30),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: TextField(
                controller: name_controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "name"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: TextField(
                controller: usernam_controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "UserName"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: TextField(
                controller: password_controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Password"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                register();


              },   child: Text("Register"),

            ),

          ],
        ),
      ),
    );
  }

  void register() async {
    data=await SharedPreferences.getInstance();
    String name=name_controller.text;
    String username=usernam_controller.text;
    String password=password_controller.text;
    if(username!='' && password!=''){
      data.setString("name",name);
      data.setString("username",username);
      data.setString("password", password);
      Navigator.push(context, MaterialPageRoute(builder: (context)=>sharedprefernce()));
    }
  }
}