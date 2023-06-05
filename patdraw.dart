import 'package:flutter/material.dart';
import 'package:hospital/layout/docavailability.dart';
import 'package:hospital/layout/doctor_list_admin.dart';
import 'package:hospital/layout/editpro.dart';
import 'package:hospital/layout/jhi_msg_pat.dart';
import 'package:hospital/layout/login.dart';
import 'package:hospital/layout/manage_appointment.dart';
import 'package:hospital/layout/patient_list_admin.dart';
import 'package:hospital/layout/patient_pro.dart';
import 'package:hospital/layout/post_notification.dart';
import 'package:hospital/layout/view_appointment_patient.dart';
import 'package:hospital/layout/view_doctor_list.dart';
import 'package:hospital/layout/view_lab_report.dart';
import 'package:hospital/layout/view_noti_doctor.dart';
import 'package:hospital/layout/view_noti_patient.dart';

import 'book_appointment.dart';

class patdraw extends StatefulWidget {
  const patdraw({Key? key}) : super(key: key);

  @override
  State<patdraw> createState() => _patdrawState();
}

class _patdrawState extends State<patdraw> {
  Future<bool> _onBackPressed() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout'),
          content: Text('Do you want to logout ?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text('No'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text('Yes'),
            ),
          ],
        );
      },
    ).then((value) => value ?? false);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onBackPressed,
        child: Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.indigo,
        title: Row(
        children: [
        Image.asset(
        'assets/home.png',
        width: 20,
        height: 20,
    ),
    SizedBox(width: 8),
    Text(
    'PHC MOOKKANNOOR',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    ),
    ),
    ],
    ),
    actions:[ Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) =>
                    vw_noti_pt()));
          },
          child: Icon(
              Icons.circle_notifications
          ),
        )
    ),
      IconButton(
    icon: Icon(Icons.logout),
    onPressed: () {
    showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
    title: Text('Logout'),
    content: Text('Do you want to logout?'),
    actions: [
    TextButton(
    onPressed: () => Navigator.of(context).pop(),
    child: Text('No'),
    ),
    TextButton(
    onPressed: () {
    Navigator.of(context).pop();
    Navigator.push(
    context,
    MaterialPageRoute(builder: (_) => login()),
    );
    },
    child: Text('Yes'),
    ),
    ],
    ),
    );
    },
    ),
    ],
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
                //   height: 100,
                // ), // Container(
                //   height: 100,
                // ),
                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.all(10.0),
                  // alignment: ,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/hospital.png'),
                    // backgroundImage: ,
                  ),
                ),
                Container(
                  child: Text(
                    "Patient",
                    style: new TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SizedBox(height: 10), // Add spacing below the "Patient" text
                Center(
                    child: Container(
                    alignment: Alignment.topCenter,
                    // decoration: new BoxDecoration(
                    //   borderRadius: new BorderRadius.circular(20),
                    //   color: Colors.white,
                    // ),
                    child: SingleChildScrollView(
                    child: Center(
                    child: Column(
                    children: [
                    // Container(
                    //   width: 7,
                    // ),
                    SingleChildScrollView(
                    child: Container(
                    height: 500,
                    width: 500,
                    decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(15),
                    color: Colors.white,
                    ),
                    child: Center(
                   child: SingleChildScrollView(
                    child: Column(
                    children: [
                    // ...
                    Center(
                    child: Container(
                    alignment: Alignment.topCenter,
                    child: SingleChildScrollView(
                    child: Center(
                    child: Column(
                    children: [
                    // ...
                    Container(
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext
                              context) =>
                                  pat_edit(),
                            ),
                          );
                        },
                        child: Card(
                          child: Column(
                            children: [
                              Container(
                                child: CircleAvatar(
                                  backgroundColor:
                                  Colors.white,
                                  radius: 50.0,
                                  backgroundImage: AssetImage(
                                      'assets/edit.jpeg'),
                                ),
                              ),
                              Text('Profile',style: new TextStyle( fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 40),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext
                              context) =>
                                  drlist(),
                            ),
                          );
                        },
                        child: Card(
                          child: Column(
                            children: [
                              Container(
                                child: CircleAvatar(
                                  backgroundColor:
                                  Colors.white,
                                  radius: 50.0,
                                  backgroundImage: AssetImage(
                                      'assets/dr.jpeg'),
                                ),
                              ),
                              Text('Doctors',style: new TextStyle( fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                    ],
                    ),
                    ),
                      SizedBox(height: 20),
                      Container(
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext
                                    context) =>
                                        book_appointment(),
                                  ),
                                );
                              },
                              child: Card(
                                child: Column(
                                  children: [
                                    Container(
                                      child: CircleAvatar(
                                        backgroundColor:
                                        Colors.white,
                                        radius: 50.0,
                                        backgroundImage: AssetImage(
                                            'assets/appoint.jpeg'),
                                      ),
                                    ),
                                    Text('Book',style: new TextStyle( fontWeight: FontWeight.bold)),
                                    Text('Appointment',style: new TextStyle( fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 40),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext
                                    context) =>
                                        view_appoint_patient(),
                                  ),
                                );
                              },
                              child: Card(
                                child: Column(
                                  children: [
                                    Container(
                                      child: CircleAvatar(
                                        backgroundColor:
                                        Colors.white,
                                        radius: 50.0,
                                        backgroundImage: AssetImage(
                                            'assets/appoint.jpeg'),
                                      ),
                                    ),
                                    Text('Appointment',style: new TextStyle( fontWeight: FontWeight.bold)),
                                    Text('Status',style: new TextStyle( fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            children: [
                            GestureDetector(
                            onTap: () {
                      Navigator.of(context).push(
                      MaterialPageRoute(
                      builder: (BuildContext
                      context) =>
                      view_lab_report(),
                      ),
                      );
                      },
                        child: Card(
                          child: Column(
                            children: [
                              Container(
                                child: CircleAvatar(
                                  backgroundColor:
                                  Colors.white,
                                  radius: 50.0,
                                  backgroundImage: AssetImage(
                                      'assets/lab.png'),
                                ),
                              ),
                              Text('Lab Report',style: new TextStyle( fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 40),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext
                              context) =>
                                  vw_noti_pt(),
                            ),
                          );
                        },
                        child: Card(
                          child: Column(
                            children: [
                          Container(
                          child: CircleAvatar(
                          backgroundColor:
                          Colors.white,
                            radius: 50.0,
                            backgroundImage: AssetImage(
                                'assets/noti2.png'),
                          ),
                        ),
                        Text('Announcement',style: new TextStyle( fontWeight: FontWeight.bold)),
                            ],
                            ),
                          ),
                        ),

                    ],
                    ),
                    ),
                    // ...
                    ],
                    ),
                    ),
                    ),
                    ),
                    ),
                    // ...
                    ],
                    ),
                    ),
                    ),
                    ),
                    ),
            ],
                    ),
    ),
    ),
        ),
    ),
    ],
    ),
    ),
        ),
    ),
    ),

                    );
                  }
                }



