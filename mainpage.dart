import 'package:flutter/material.dart';

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.horizontal(),
          color: Colors.indigo,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 400,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                      ),
                      Container(
                        child:Image.asset("assets/logo.png",height: 80,width: 80,)
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
