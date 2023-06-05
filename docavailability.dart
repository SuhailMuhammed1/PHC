import 'package:flutter/material.dart';
import 'package:hospital/layout/login.dart';
// import 'package:';
import 'package:http/http.dart';

class docavail extends StatefulWidget {
  const docavail({Key? key}) : super(key: key);

  @override
  State<docavail> createState() => _docavailState();
}

class _docavailState extends State<docavail> {
  int _value=1;
  var gen;

  void postdata() async {
    String url = login.url+"doctor/availdoc/";
    if (_value==1)
    {
      gen="Available";
    }
    else if(_value==2)
    {
      gen="Not Available";
    }
    var resp = await post(url, body: {
      "sts": gen,
      "uid":login.uid
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "Availability",
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
                Container(
                  height: 50,
                ),
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
                  child: Text("Availability",style: new TextStyle(
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
                        padding: EdgeInsets.fromLTRB(70, 0, 30, 10), //3rd

                        // width: 350.0,
                        // decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(10),
                        //     border: Border.all(color: Colors.black)
                        // ),

                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Row(
                              children: [
                                // Text("Gender"),
                                Radio(
                                    value: 1,
                                    groupValue: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = 1;
                                      });
                                    }),
                                Text("Available"),
                                Radio(
                                  value: 2,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = 2;
                                    });
                                  },
                                ),
                                Text("Not Available"),
                              ],
                            )
                          ],
                        ), //1st
                      ),
                      Container(
                        width: 200,
                        // color: Colors.cyan,
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                        child: ElevatedButton
                          (onPressed: () {
                          postdata();
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => login()));
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
