import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hospital/layout/hlthdraw.dart';
import 'package:hospital/layout/login.dart';
import 'package:http/http.dart';
import 'package:file_picker/file_picker.dart';

class snd_msg extends StatefulWidget {
  const snd_msg({Key? key}) : super(key: key);

  @override
  State<snd_msg> createState() => _snd_msgState();
}

class _snd_msgState extends State<snd_msg> {
  late TextEditingController msg;

  @override
  void initState(){
    msg=TextEditingController();
    super.initState();
  }
  void postdata() async {
    String url = login.url+"message/msg/";
    var resp = await post(url, body: {
      "msg": msg.text.toString(),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "Message ",
          style: new TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.horizontal(),
          color: Colors.indigo,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Container(
                //   // alignment: ,
                //   child: CircleAvatar(
                //     backgroundColor: Colors.white,
                //     radius: 40.0,
                //     backgroundImage: AssetImage('assets/b2.jpg'),
                //     // backgroundImage: ,
                //   ),
                // ),
                Container(
                  child: Text("Send Message",style: new TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                        child: TextFormField(
                          controller: msg,
                          decoration: InputDecoration(
                            labelText: "Message",
                            prefixIcon: Icon(Icons.message),
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.vertical(),
                            // )
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        // color: Colors.cyan,
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                        child: ElevatedButton
                          (onPressed: () {
                          postdata();
                           Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => hlthdraw()));
                        },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.indigo, // Background color
                          ),
                          child: Text("Send"),
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