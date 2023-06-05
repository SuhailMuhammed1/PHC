import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hospital/layout/login.dart';
import 'package:http/http.dart';
import 'package:file_picker/file_picker.dart';

class lab_details_add extends StatefulWidget {
  const lab_details_add({Key? key}) : super(key: key);

  @override
  State<lab_details_add> createState() => _lab_details_addState();
}

class _lab_details_addState extends State<lab_details_add> {
  List dropList =[
    {"p_id":0, "name": "<Select>"},
    // {"edpt_id":1, "name": "<two>"},
  ];
  var fkey=GlobalKey<FormState>();
  var val=true;
  var dropdownValue = "";
  // late TextEditingController details,type,fee;
  void gendrop() async {
    String url = login.url+"patient/patdrop/";
    var resp = await get(url);
    print(resp.body);
    setState(() {
      dropList = jsonDecode(resp.body);
    });
  }
  late TextEditingController labdetails;
  var fil,objfile;
  @override

  void initState(){
    labdetails=TextEditingController();
    super.initState();
  }
  void postdata() async {
    String url = login.url+"patient_lab/patlab/";
    var resp = await post(url, body: {
      "lab_detials": labdetails.text.toString(),
      "pid":dropdownValue,

    });
  }
  file_up() async {
    print('added successfully');
    var result = await FilePicker.platform.pickFiles(withReadStream: true);
    if (result != null) {
      // var fil=result.files.single.path;
      setState(() {
        fil= result.files.first.name;
        objfile = result.files.single;
        labdetails.text=fil;
      });
    } else {
      // User canceled the picker
    }
  }
  @override
  Widget build(BuildContext context) {
    gendrop();
    return Scaffold(
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
                  child: Text("Add patient details",style: new TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                ),
                Container(
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container( //dropdown
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 10), //3rd



                          width: 350.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black)
                          ),

                          child: DropdownButtonFormField(
                              hint: Text("<select the patient>"),
                              onChanged: ( newValue) {
                                setState(() {
                                  dropdownValue = newValue.toString();
                                  print(dropdownValue);
                                });
                              },
                              items: dropList.map((item) => DropdownMenuItem(child: Text(item['name'].toString()),value:item['p_id'].toString(),)).toList()
                          )

                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 1.0),
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            file_up();
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 5.0,
                          padding: EdgeInsets.all(15.15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(bottomRight:Radius.circular(10) , topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                            //borderRadius: BorderRadius.only()
                          ),
                          primary: Colors.white,
                          ),
                          child: Text(
                            'add details ',
                            style: TextStyle(
                              color: Color(0xFF072850),
                              letterSpacing: 1.5,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans',
                            ),
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
                          // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => login()));
                        },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.indigo, // Background color
                          ),
                          child: Text("Add"),
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