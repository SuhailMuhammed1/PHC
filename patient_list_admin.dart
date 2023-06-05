
import 'package:flutter/material.dart';
import 'package:hospital/layout/login.dart';
import 'package:http/http.dart';
import 'dart:convert';
class pat_det_admin extends StatefulWidget {
  const pat_det_admin({Key? key}) : super(key: key);

  @override
  State<pat_det_admin> createState() => _pat_det_adminState();
}

class _pat_det_adminState extends State<pat_det_admin> {

  late List data;
  void List_function() async {
    var url = Uri.parse(login.url+"patient/patlist/");
    Response resp1 = await get(url);
    data = jsonDecode(resp1.body);
    this.setState(() {
    });
    print(resp1.body);
  }

  void delete(pid) async {
    var url = Uri.parse(login.url+"patient/delpat/");
    Response resp1 = await post(url,body: {
      "pid":pid
    });
  }
  @override
  Widget build(BuildContext context) {
    List_function();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "Patient list",
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
                              new Text(('NAME : ' )+" "+data[index]['name'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium
                              ),
                              new SizedBox(height: 6.0),
                              new Text("AGE : "+" "+data[index]['age'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium,
                              ),
                              new SizedBox(height: 6.0),

                              new Text(('EMAIL : ' )+" "+data[index]['email'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium
                              ),
                              new SizedBox(height: 6.0),
                              new Text(('ADDRESS : ' )+" "+data[index]['address'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium
                              ),
                              new SizedBox(height: 6.0),
                              new Text(('PHONE : ' )+" "+data[index]['phone'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium
                              ),
                              new SizedBox(height: 6.0),
                              SizedBox(height: 20),
                              Container(
                                width: 200,
                                // color: Colors.cyan,
                                padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                                child: ElevatedButton
                                  (onPressed: () {
                                  delete(data[index]['hi_id'].toString());
                                  // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => main_register()));
                                },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.indigo, // Background color
                                  ),
                                  child: Text("Delete"),
                                ),
                              ),
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