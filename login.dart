import 'package:flutter/material.dart';
import 'package:hospital/layout/drawadmin.dart';
import 'package:hospital/layout/drawdoctor.dart';
import 'package:hospital/layout/hlthdraw.dart';
import 'package:hospital/layout/labdraw.dart';
import 'package:hospital/layout/main_register.dart';
import 'package:hospital/layout/patdraw.dart';
import 'package:hospital/layout/patientdraw.dart';
import 'package:http/http.dart';
import 'dart:convert';

import 'home.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
  static var url="http://172.20.10.2:8000/";
  static var  uid="1";
}

class _loginState extends State<login> {
  late TextEditingController username,password;
  var data=[];

  @override
  void initState() {
    username=TextEditingController();
    password=TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  void postdata() async {
    var url= login.url+"login/log/";
    // String url = "http://192.168.1.47:8000/login/log/";
    Response resp = await post(url, body: {
      "username": username.text,
      "password": password.text,
    });

    data=jsonDecode(resp.body);
    if (data.length>0)
    {
      login.uid=data[0]['uid'].toString();
      if(data[0]['type']=="admin")
      {
        // Navigator.of(context).pop();
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => drawadmin()
        ));
        // showDialog(context: context, builder: (context) => AlertDialog(
        //   content: Text(
        //       "You Have Successfully Logged in",
        //       style: TextStyle(fontSize: 15.0),),),);

      }
      else if(data[0]['type']=="doctor")
        {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => drawdoctor()
          ));
          // showDialog(context: context, builder: (context) => AlertDialog(
          //     content: Text( "You Have Successfully Logged in",
          //       style: TextStyle(fontSize: 15.0),)));
        }
      else if(data[0]['type']=="lab")
      {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => labdraw()
        ));
        // showDialog(context: context, builder: (context) => AlertDialog(
        //     content: Text( "You Have Successfully Logged in",
        //       style: TextStyle(fontSize: 15.0),)));
      }
      else if(data[0]['type']=="patient")
      {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => patdraw()
        ));
        // showDialog(context: context, builder: (context) => AlertDialog(
        //     content: Text( "You Have Successfully Logged in",
        //       style: TextStyle(fontSize: 15.0),)));
      }
      else if(data[0]['type']=="hlth")
      {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => hlthdraw()
        ));
        // showDialog(context: context, builder: (context) => AlertDialog(
        //     content: Text( "You Have Successfully Logged in",
        //       style: TextStyle(fontSize: 15.0),)));
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.horizontal(),
          color: Colors.indigo,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 100,
                ),
                Container(
                  // width: 900,
                  // alignment: ,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40.0,
                    backgroundImage: AssetImage('assets/hospital.png'),
                    // backgroundImage: ,
                  ),
                ),
                SizedBox(height: 10), // Add spacing below the "Patient" text
                Container(
                  child: Text("LOGIN",style: new TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                  ),),
                ),
                SizedBox(height: 20), // Add spacing below the "Patient" text
                Container(
                  height: 405,
                  width: 500,
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                        child: TextFormField(
                          controller: username,
                          decoration: InputDecoration(
                              labelText: "User_id",
                            prefixIcon: Icon(Icons.people),
                              // border: OutlineInputBorder(
                              //   borderRadius: BorderRadius.vertical(),
                              // )
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                        child: TextFormField(
                          controller: password,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            prefixIcon: Icon(Icons.password),
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.vertical(),
                            // )
                          ),
                        ),
                      ),
                      SizedBox(height: 30), // Add spacing below the "Patient" text
                      Container(
                        width: 200,
                        // color: Colors.cyan,
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                        child: ElevatedButton
                          (onPressed: () {
                          postdata();
                          // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => login()));
                        },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.indigo, // Background color
                          ),
                          child: Text("Login"),
                        ),
                      ),
                      Container(
                        width: 200,
                        // color: Colors.cyan,
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                        child: ElevatedButton
                          (onPressed: () {
                          // postdata();
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => main_register()));
                        },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.indigo, // Background color
                          ),
                          child: Text("Register"),
                        ),
                      ),


                    ],
                  ),
                )

              ],

          ),
          ),
        ),
      ),



    );
  }
}
