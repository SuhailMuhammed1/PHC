import 'package:flutter/material.dart';
import 'package:hospital/layout/doctor_reg.dart';
import 'package:hospital/layout/login.dart';
import 'package:hospital/layout/register_junior_health.dart';
import 'package:hospital/layout/register_lab.dart';
import 'package:hospital/layout/register_patient.dart';


class main_register extends StatefulWidget {
  const main_register({Key? key}) : super(key: key);

  @override
  _main_registerState createState() => _main_registerState();
}

class _main_registerState extends State<main_register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "SIGNUP",
          style: new TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        // leading: IconButton(
        //   icon: Icon(Icons.home),
        //   onPressed: () {
        //     // Navigator.of(context).pop();
        //     Navigator.push(context, MaterialPageRoute(builder: (_) => login()));
        //   },
        // ),
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
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
                        width: 400,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => doc_reg()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.indigo, // background
                            onPrimary: Colors.white, // foreground
                          ),
                          child: Text("  DOCTOR   "),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
                        width: 400,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => reg_junior()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.indigo, // background
                            onPrimary: Colors.white, // foreground
                          ),
                          child: Text(" JUNIOR HEALTH INSPECTOR "),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
                        width: 400,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => reg_lab()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.indigo, // background
                            onPrimary: Colors.white, // foreground
                          ),
                          child: Text("LAB"),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(40, 20, 40, 40),
                        width: 400,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => reg_patient()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.indigo, // background
                            onPrimary: Colors.white, // foreground
                          ),
                          child: Text("PATIENT"),
                        ),
                      )


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