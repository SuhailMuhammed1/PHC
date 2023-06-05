
import 'package:flutter/material.dart';
import 'package:hospital/layout/login.dart';
import 'package:http/http.dart';
import 'dart:convert';
class view_appoint_patient extends StatefulWidget {
  const view_appoint_patient({Key? key}) : super(key: key);

  @override
  State<view_appoint_patient> createState() => _view_appoint_patientState();
}

class _view_appoint_patientState extends State<view_appoint_patient> {

  late List data;
  void List_function() async {
    var url = Uri.parse(login.url+"appointment/vappoint/");
    Response resp1 = await post(url,body: {
      "uid":login.uid
    });
    data = jsonDecode(resp1.body);
    this.setState(() {
    });
    print(resp1.body);
  }


  @override
  Widget build(BuildContext context) {
    List_function();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "Appointment Status",
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
          child: new ListView.builder(
            itemCount: data == null ? 0 : data.length,
            // itemCount: 2,
            itemBuilder: (context, index) {
              return new Padding(
                padding: new EdgeInsets.fromLTRB(20, 05, 10, 5),
                child: new Card(
                  elevation: 2.0,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(16.0)
                  ),
                  child: InkWell(
                    onTap: () {
                      print("tapped");
                      //  tap funtion here

                    },
                    child: new Column(
                      children: <Widget>[
                        new Padding(
                          padding: new EdgeInsets.all(16.0),
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              // Image.network(mainpage.url+"static/"+data[index]['pmr'].toString()),
                              new Text(('DOCTOR : Dr ' )+" "+data[index]['drname'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium
                              ),

                              new SizedBox(height: 6.0),
                              new Text("PATIENT : "+" "+data[index]['pname'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium,
                              ),

                              new SizedBox(height: 6.0),
                              new Text("DATE : "+" "+data[index]['date'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium,
                              ),

                              new SizedBox(height: 6.0),
                              new Text("TIME : "+" "+data[index]['time'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium,
                              ),

                              new SizedBox(height: 6.0),
                              new Text(('STATUS : ' )+" "+data[index]['status'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium
                              ),
                              new SizedBox(height: 6.0),
                              // Container(
                              //   padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                              //   child: ElevatedButton
                              //     (onPressed: () {
                              //     accept(data[index]['app_id'].toString());
                              //     // postdata();
                              //     // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => login()));
                              //   },
                              //     style: ElevatedButton.styleFrom(
                              //       primary: Colors.cyan, // Background color
                              //     ),
                              //     child: Text("APPROVE"),
                              //   ),
                              // ),
                              // Container(
                              //   // width: 200,
                              //   // color: Colors.cyan,
                              //   padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                              //   child: ElevatedButton
                              //     (onPressed: () {
                              //     reject(data[index]['app_id'].toString());
                              //     // postdata();
                              //     // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => login()));
                              //   },
                              //     style: ElevatedButton.styleFrom(
                              //       primary: Colors.cyan, // Background color
                              //     ),
                              //     child: Text("REJECT"),
                              //   ),
                              // ),
                              // new Text(('DEPARTMENT : ' )+" "+data[index]['department'].toString(), style: Theme
                              //     .of(context)
                              //     .textTheme
                              //     .titleMedium
                              // ),
                              // new SizedBox(height: 6.0),
                              // new Text(('PHONE : ' )+" "+data[index]['phone'].toString(), style: Theme
                              //     .of(context)
                              //     .textTheme
                              //     .titleMedium
                              // ),
                              // new SizedBox(height: 6.0),
                              // new Text(('EMAIL : ' )+" "+data[index]['mail'].toString(), style: Theme
                              //     .of(context)
                              //     .textTheme
                              //     .titleMedium
                              // ),
                              // new SizedBox(height: 6.0),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          )
      ),
    );

  }
}