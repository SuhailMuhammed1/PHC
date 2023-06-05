//
// import 'package:flutter/material.dart';
// import 'package:hospital/layout/login.dart';
// import 'package:http/http.dart';
// import 'dart:convert';
// class jhi_msg extends StatefulWidget {
//   const jhi_msg({Key? key}) : super(key: key);
//
//   @override
//   State<jhi_msg> createState() => jhi_msgState();
// }
//
// class jhi_msgState extends State<jhi_msg> {
//
//   late List data;
//   void List_function() async {
//     var url = Uri.parse(login.url+"message/vwmsg/");
//     Response resp1 = await get(url);
//     data = jsonDecode(resp1.body);
//     this.setState(() {
//     });
//     print(resp1.body);
//   }
//   @override
//   Widget build(BuildContext context) {
//     List_function();
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.indigo,
//         title: Text(
//           "JHI Notifications",
//           style: new TextStyle(
//             fontSize: 30,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       body: Container(
//           decoration: new BoxDecoration(
//             borderRadius: new BorderRadius.horizontal(),
//             color: Colors.indigo,
//           ),
//           child: new ListView.builder(
//             itemCount: data == null ? 0 : data.length,
//             // itemCount: 2,
//             itemBuilder: (context, index) {
//               return new Padding(
//                 padding: new EdgeInsets.fromLTRB(20, 05, 10, 5),
//                 child: new Card(
//                   elevation: 2.0,
//                   shape: new RoundedRectangleBorder(
//                       borderRadius: new BorderRadius.circular(16.0)
//                   ),
//                   child: InkWell(
//                     onTap: () {
//                       print("tapped");
//                       //  tap funtion here
//
//                     },
//                     child: new Column(
//                       children: <Widget>[
//                         new Padding(
//                           padding: new EdgeInsets.all(16.0),
//                           child: new Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: <Widget>[
//                               // Image.network(mainpage.url+"static/"+data[index]['pmr'].toString()),
//                               new Text(('NOTIFICATION : ' )+" "+data[index]['message'].toString(), style: Theme
//                                   .of(context)
//                                   .textTheme
//                                   .titleMedium
//                               ),
//                               new SizedBox(height: 6.0),
//                               new Text("DATE : "+" "+data[index]['date'].toString(), style: Theme
//                                   .of(context)
//                                   .textTheme
//                                   .titleMedium,
//                               ),
//                               new SizedBox(height: 6.0),
//
//                               new Text(('TIME : ' )+" "+data[index]['time'].toString(), style: Theme
//                                   .of(context)
//                                   .textTheme
//                                   .titleMedium
//                               ),
//                               new SizedBox(height: 6.0),
//                               // new Text(('DEPARTMENT : ' )+" "+data[index]['department'].toString(), style: Theme
//                               //     .of(context)
//                               //     .textTheme
//                               //     .titleMedium
//                               // ),
//                               // new SizedBox(height: 6.0),
//                               // new Text(('PHONE : ' )+" "+data[index]['phone'].toString(), style: Theme
//                               //     .of(context)
//                               //     .textTheme
//                               //     .titleMedium
//                               // ),
//                               // new SizedBox(height: 6.0),
//                               // new Text(('EMAIL : ' )+" "+data[index]['mail'].toString(), style: Theme
//                               //     .of(context)
//                               //     .textTheme
//                               //     .titleMedium
//                               // ),
//                               // new SizedBox(height: 6.0),
//
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             },
//           )
//       ),
//     );
//
//   }
// }
import 'package:flutter/material.dart';
import 'package:hospital/layout/login.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class jhi_msg extends StatefulWidget {
  const jhi_msg({Key? key}) : super(key: key);

  @override
  State<jhi_msg> createState() => jhi_msgState();
}

class jhi_msgState extends State<jhi_msg> {
  late List<dynamic> data = [];

  void fetchData() async {
    var url = Uri.parse(login.url + "message/vwmsg/");
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() {
        data = jsonDecode(response.body);
      });
      print(response.body);
    } else {
      print("Failed to fetch data. Error: ${response.statusCode}");
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "JHI Notifications",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.horizontal(),
          color: Colors.indigo,
        ),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 10, 5),
              child: Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: InkWell(
                  onTap: () {
                    print("Tapped");
                    // TODO: Implement tap function here
                  },
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'NOTIFICATION: ${data[index]['message']}',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        SizedBox(height: 6.0),
                        Text(
                          'DATE: ${data[index]['date']}',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        SizedBox(height: 6.0),
                        Text(
                          'TIME: ${data[index]['time']}',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
