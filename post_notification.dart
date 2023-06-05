import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hospital/layout/drawadmin.dart';
import 'package:hospital/layout/login.dart';
import 'package:http/http.dart';
import 'package:file_picker/file_picker.dart';

class post_notification extends StatefulWidget {
  const post_notification({Key? key}) : super(key: key);

  @override
  State<post_notification> createState() => _post_notificationState();
}

class _post_notificationState extends State<post_notification> {

  late TextEditingController noti;
  @override

  void initState(){
    noti=TextEditingController();
    super.initState();
  }
  void postdata() async {
    String url = login.url+"notification/noti/";
    var resp = await post(url, body: {
      "notification": noti.text.toString(),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "Notification ",
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
                  child: Text("Post Notification",style: new TextStyle(
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
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                        child: TextFormField(
                          controller: noti,
                          decoration: InputDecoration(
                            labelText: "Notification",
                            prefixIcon: Icon(Icons.notification_add),
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.vertical(),
                            // )
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        // color: Colors.cyan,
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                        child: ElevatedButton
                          (onPressed: () {
                          postdata();
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => post_notification()));
                        },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.indigo, // Background color
                          ),
                          child: Text("Post"),
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