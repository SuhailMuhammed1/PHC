import 'package:flutter/material.dart';
import 'package:hospital/layout/login.dart';
import 'package:hospital/layout/patient_pro.dart';
import 'package:http/http.dart';
import 'dart:convert';
class vwpropat extends StatefulWidget {
  const vwpropat({Key? key}) : super(key: key);

  @override
  State<vwpropat> createState() => _vwpropatState();
}

class _vwpropatState extends State<vwpropat> {

  late List data;
  void List_function() async {
    var url = Uri.parse(login.url+"patient/vwppro/");
    Response resp1 = await get(url);
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
        // backgroundColor: Colors.pinkAccent.shade200,
        // title: Text(
        //   "Notifications",
        //   style: new TextStyle(
        //     fontSize: 30,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
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

                              new Text(('GENDER : ' )+" "+data[index]['gender'].toString(), style: Theme
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
                              new Text(('PASSWORD : ' )+" "+data[index]['password'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium
                              ),
                              new SizedBox(height: 6.0),
                              Container(
                                // width: 200,
                                // color: Colors.cyan,
                                padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                                child: ElevatedButton
                                  (onPressed: () {
                                  pat_edit.pid=data[index]['p_id'].toString();
                                  // reject(data[index]['app_id'].toString());
                                  // postdata();
                                  // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => login()));
                                },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.indigo, // Background color
                                  ),
                                  child: Text("EDIT"),
                                ),
                              ),

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