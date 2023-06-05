// import 'package:flutter/material.dart';
// import 'package:hospital/layout/book_appointment.dart';
// import 'package:hospital/layout/doctor_list_admin.dart';
// import 'package:hospital/layout/editpro.dart';
// import 'package:hospital/layout/login.dart';
// import 'package:hospital/layout/manage_appointment.dart';
// import 'package:hospital/layout/patient_list_admin.dart';
// import 'package:hospital/layout/patient_pro.dart';
// import 'package:hospital/layout/post_notification.dart';
// import 'package:hospital/layout/view_doctor_list.dart';
// import 'package:hospital/layout/view_lab_report.dart';
// import 'package:hospital/layout/view_noti_doctor.dart';
// import 'package:hospital/layout/view_noti_patient.dart';
//
// class drawpatient extends StatefulWidget {
//   const drawpatient({Key? key}) : super(key: key);
//
//   @override
//   State<drawpatient> createState() => _drawpatientState();
// }
//
// class _drawpatientState extends State<drawpatient> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.cyan,
//         // title: Text(
//         //   "       SIGNUP",
//         //   style: new TextStyle(
//         //       fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
//         // ),
//         leading: IconButton(
//           icon: Icon(Icons.home),
//           onPressed: () {
//             // Navigator.of(context).pop();
//             Navigator.push(context, MaterialPageRoute(builder: (_) => login()));
//           },
//         ),
//       ),
//       body: Container(
//         decoration: new BoxDecoration(
//           borderRadius: new BorderRadius.horizontal(),
//           color: Colors.cyan,
//         ),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Container(
//                   alignment: Alignment.topCenter,
//                   padding: EdgeInsets.all(20.0),
//                   // alignment: ,
//                   child: CircleAvatar(
//                     backgroundColor: Colors.white,
//                     radius: 50.0,
//                     backgroundImage: AssetImage('assets/hospital.png'),
//                     // backgroundImage: ,
//                   ),
//                 ),
//                 Container(
//                   child: Text(
//                     "Patient",
//                     style: new TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   ),
//                 ),
//                 Center(
//                   child: Container(
//                     alignment: Alignment.topCenter,
//                     // decoration: new BoxDecoration(
//                     //   borderRadius: new BorderRadius.circular(20),
//                     //   color: Colors.white,
//                     // ),
//                     child: Center(
//                       child: Column(
//                         children: [
//                           Container(
//                             width: 40,
//                             // decoration: new BoxDecoration(
//                             //   borderRadius: new BorderRadius.vertical(),
//                             //   color: Colors.black38,
//                             // ),
//                             // child: GestureDetector(
//                             //   onTap: () {
//                             //     Navigator.of(context).push(MaterialPageRoute(
//                             //         builder: (BuildContext context) =>
//                             //             drlist_adm()));
//                             //   },
//                             //   child: Card(
//                             //     child: Container(
//                             //       child: CircleAvatar(
//                             //         backgroundColor: Colors.white,
//                             //         radius: 50.0,
//                             //         backgroundImage: AssetImage('assets/dr.jpeg'),
//                             //         // backgroundImage: ,
//                             //       ),
//                             //     ),
//                             //   ),
//                             // ),
//                           ),
//                           Container(
//                             // decoration: new BoxDecoration(
//                             //   borderRadius: new BorderRadius.vertical(),
//                             //   color: Colors.black38,
//                             // ),
//                             child: GestureDetector(
//                               onTap: () {
//                                 Navigator.of(context).push(MaterialPageRoute(
//                                     builder: (BuildContext context) =>
//                                         drlist()));
//                               },
//                               child: Card(
//                                 child: Container(
//                                   child: CircleAvatar(
//                                     backgroundColor: Colors.white,
//                                     radius: 50.0,
//                                     backgroundImage: AssetImage('assets/dr.jpeg'),
//                                     // backgroundImage: ,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             // decoration: new BoxDecoration(
//                             //   borderRadius: new BorderRadius.vertical(),
//                             //   color: Colors.black38,
//                             // ),
//                             child: GestureDetector(
//                               onTap: () {
//                                 Navigator.of(context).push(MaterialPageRoute(
//                                     builder: (BuildContext context) =>
//                                         book_appointment()));
//                               },
//                               child: Card(
//                                 child: Container(
//                                   child: CircleAvatar(
//                                     backgroundColor: Colors.white,
//                                     radius: 50.0,
//                                     backgroundImage: AssetImage('assets/appoint.jpeg'),
//                                     // backgroundImage: ,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             child: GestureDetector(
//                               onTap: () {
//                                 Navigator.of(context).push(MaterialPageRoute(
//                                     builder: (BuildContext context) =>
//                                         pat_edit()));
//                               },
//                               child: Card(
//                                 child: Container(
//                                   child: CircleAvatar(
//                                     backgroundColor: Colors.white,
//                                     radius: 50.0,
//                                     backgroundImage:
//                                     AssetImage('assets/edit.jpeg'),
//                                     // backgroundImage: ,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           // Container(
//                           //   child: GestureDetector(
//                           //     onTap: () {
//                           //       Navigator.of(context).push(MaterialPageRoute(
//                           //           builder: (BuildContext context) =>
//                           //               pat_det_admin()));
//                           //     },
//                           //     child: Card(
//                           //       child: Container(
//                           //         child: CircleAvatar(
//                           //           backgroundColor: Colors.white,
//                           //           radius: 50.0,
//                           //           backgroundImage:
//                           //           AssetImage('assets/patient.jpeg'),
//                           //           // backgroundImage: ,
//                           //         ),
//                           //       ),
//                           //     ),
//                           //   ),
//                           // ),
//                           Container(
//                             child: GestureDetector(
//                               onTap: () {
//                                 Navigator.of(context).push(MaterialPageRoute(
//                                     builder: (BuildContext context) =>
//                                         view_lab_report()));
//                               },
//                               child: Card(
//                                 child: Container(
//                                   child: CircleAvatar(
//                                     backgroundColor: Colors.white,
//                                     radius: 50.0,
//                                     backgroundImage:
//                                     AssetImage('assets/lab.png'),
//                                     // backgroundImage: ,
//                                   ),
//                                 ),
//
//                               ),
//                             ),
//                           ),
//                           Container(
//                             child: GestureDetector(
//                               onTap: () {
//                                 Navigator.of(context).push(MaterialPageRoute(
//                                     builder: (BuildContext context) =>
//                                         vw_noti_pt()));
//                               },
//                               child: Card(
//                                 child: Container(
//                                   child: CircleAvatar(
//                                     backgroundColor: Colors.white,
//                                     radius: 50.0,
//                                     backgroundImage: AssetImage('assets/noti2.png'),
//                                     // backgroundImage: ,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     // child: Row(
//                     //   children: [
//                     //     GestureDetector(
//                     //       onTap: () {
//                     //         Navigator.of(context).push(MaterialPageRoute(
//                     //             builder: (BuildContext context) => drlist_adm()
//                     //         ));
//                     //       },
//                     //       child: Container(
//                     //         child: CircleAvatar(
//                     //           backgroundColor: Colors.white,
//                     //           radius: 50.0,
//                     //           backgroundImage: AssetImage('assets/dr.jpeg'),
//                     //           // backgroundImage: ,
//                     //         ),
//                     //       ),
//                     //     ),
//                     //
//                     //
//                     //   ],
//                     // ),
//                   ),
//                 ),
//                 // Container(
//                 //   child: GridView.count(crossAxisCount: 3,
//                 //   children: [
//                 //     Container(color: Colors.white,)
//                 //     // GestureDetector(
//                 //     //       onTap: () {
//                 //     //         Navigator.of(context).push(MaterialPageRoute(
//                 //     //             builder: (BuildContext context) => drlist_adm()
//                 //     //         ));
//                 //     //       },
//                 //     //       child: Container(
//                 //     //         child: CircleAvatar(
//                 //     //           backgroundColor: Colors.white,
//                 //     //           radius: 50.0,
//                 //     //           backgroundImage: AssetImage('assets/dr.jpeg'),
//                 //     //           // backgroundImage: ,
//                 //     //         ),
//                 //     //       ),
//                 //     //     ),
//                 //   ],),
//                 // )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
