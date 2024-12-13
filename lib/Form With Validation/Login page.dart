import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Next page temporary.dart';




void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: login(),

  ),);
}
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  GlobalKey<FormState>formkey=GlobalKey();
  bool showpass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(
          key: formkey,
          child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60,top: 80),
                  child: Text("Loginpage",style: TextStyle(
                      fontSize: 30,color: Colors.deepOrange,
                      fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "name",
                        labelText: "name",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))
                    ),
                    validator: (name){
                      if(name!.isEmpty ){
                        return "enter valid name";
                      }
                      else{
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child:
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "email",
                        labelText: "email",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))
                    ),
                    validator: (email){
                      if(email!.isEmpty || !email.contains('@') || !email.contains('.')){
                        return "enter valid Email";
                      }
                      else{
                        return null;
                      }
                    },
                  ),
                ),
              //  SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child:
                  TextFormField(
                    obscureText: showpass,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: IconButton(onPressed: () {
                          setState(() {
                            if(showpass){
                              showpass==false;
                            }
                            else{
                              showpass==true;
                            }
                          });
                        }, icon: Icon(showpass==true ?Icons.visibility_off :Icons.visibility),),
                        hintText: "password",
                        labelText: "password",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))

                    ),
                    validator: (password){
                      if(password!.isEmpty || password.length<6){
                        return "Enter valid password";
                      }
                      else{
                        return null;
                      }
                    },
                  ),
                ),


                SizedBox(height: 30,),
                ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[200],
                ),
                    onPressed: (){
                      var valid=formkey.currentState!.validate();
                      if(valid){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>nextPage()));
                      }

                    },child:Text("Login")),

              ] ),
        ),

      ), );



  }
}
