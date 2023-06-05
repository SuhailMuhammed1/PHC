import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hospital/layout/login.dart';
import 'package:hospital/layout/patdraw.dart';
import 'package:http/http.dart';
import 'package:file_picker/file_picker.dart';

class book_appointment extends StatefulWidget {
  const book_appointment({Key? key}) : super(key: key);

  @override
  State<book_appointment> createState() => _book_appointmentState();
}

class _book_appointmentState extends State<book_appointment> {
  List dropList = [
    {"dr_id": 0, "name": "<Select>"},
    // {"edpt_id":1, "name": "<two>"},
  ];
  var fkey = GlobalKey<FormState>();
  var val = true;
  var dropdownValue = "";
  // late TextEditingController details,type,fee;
  void gendrop() async {
    String url = login.url + "doctor/drpbook/";
    var resp = await get(url);
    print(resp.body);
    setState(() {
      dropList = jsonDecode(resp.body);
    });
  }

  late TextEditingController dat, drid, tim;

  @override
  void initState() {
    dat = TextEditingController();
    drid = TextEditingController();
    tim = TextEditingController();
    super.initState();
  }

  void postdata() async {
    String url = login.url + "appointment/book/";
    var resp = await post(url, body: {
      "date": dat.text.toString(),
      "time": tim.text.toString(),
      "drid": dropdownValue,
      "uid": login.uid
    });
  }

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1850, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        dat.text = "${selectedDate.toLocal()}".split(' ')[0];
      });
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        tim.text = picked.format(context);
      });
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
                Container(
                  child: Text(
                    "Add Appointment Details",
                    style: new TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
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
                        padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                        child: TextFormField(
                          showCursor: true,
                          readOnly: true,
                          decoration: InputDecoration(
                            labelText: 'Booking date',
                            hintText: selectedDate.toString(),
                            prefixIcon: Icon(Icons.date_range),
                          ),
                          onTap: () {
                            setState(() {
                              _selectDate(context);
                            });
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: GestureDetector(
                          onTap: () {
                            _selectTime(context);
                          },
                          child: AbsorbPointer(
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: "Booking time",
                                prefixIcon: Icon(Icons.access_time),
                              ),
                              controller: tim,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: DropdownButtonFormField(
                          hint: Text("Select the Doctor"),
                          onChanged: (newValue) {
                            setState(() {
                              dropdownValue = newValue.toString();
                              print(dropdownValue);
                            });
                          },
                          items: dropList
                              .map(
                                (item) => DropdownMenuItem(
                              child: Text(item['name'].toString()),
                              value: item['dr_id'].toString(),
                            ),
                          )
                              .toList(),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 200,
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                        child: ElevatedButton(
                          onPressed: () {
                            postdata();
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) => patdraw(),
                              ),
                            );
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                content: Text("Appointment Booked Successfully", style: TextStyle(fontSize: 15.0),),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.indigo,
                          ),
                          child: Text("Book"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
