import 'package:hospital/layout/download.dart';
import 'package:flutter/material.dart';
import 'package:hospital/layout/login.dart';
import 'package:http/http.dart';
import 'dart:convert';
class view_lab_report extends StatefulWidget {
  const view_lab_report({Key? key}) : super(key: key);

  @override
  State<view_lab_report> createState() => _view_lab_reportState();
}

class _view_lab_reportState extends State<view_lab_report> {

  late List data;
  void List_function() async {
    var url = Uri.parse(login.url+"patient_lab/vw/");
    Response resp1 = await post(url,body: {
      "uid":login.uid
    });

    this.setState(() {
      data = jsonDecode(resp1.body);
    });
    print(resp1.body);
  }

  // void down(lid)async{
  //   var url = Uri.parse(login.url+"patient_lab/vw/");
  //   Response resp1 = await post(url,body: {
  //     "lid":lid
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    List_function();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "Lab Report",
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
                              new Text(('Name : ' )+" "+data[index]['name'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium
                              ),
                              Container(
                                child: ElevatedButton(
                                  onPressed: (){
                                    // showDialog(context: context, builder: (context) => AlertDialog(
                                    //     content: Text("successfully requested")));
                                    // login.url+'static/'+
                                    download.name=(login.url+'static/'+data[index]['lb_id'].toString()+".pdf");
                                        // download.name=(data[index]['lb_id'].toString()+".pdf");
                                    // postdata();
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (BuildContext context) => download()));

                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.indigo, // Background color
                                  ),
                                  child: Text("Download"),
                                ),
                              )
                              // new SizedBox(height: 6.0),
                              // new Text("DATE : "+" "+data[index]['date'].toString(), style: Theme
                              //     .of(context)
                              //     .textTheme
                              //     .titleMedium,
                              // ),
                              // new SizedBox(height: 6.0),
                              //
                              // new Text(('TIME : ' )+" "+data[index]['time'].toString(), style: Theme
                              //     .of(context)
                              //     .textTheme
                              //     .titleMedium
                              // ),
                              // new SizedBox(height: 6.0),
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