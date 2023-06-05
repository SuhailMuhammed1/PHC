import 'package:flutter/material.dart';

import 'login.dart';
// import 'package:welcome_login/ui/home.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xff3f51b5),
                  Color(0xff3f51b5),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp)),
        child: Center(
          child: Stack(
            children: [
              Positioned(
                bottom: 335,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Image.asset('assets/home.png',
                      width: 130,
                    ),
                    SizedBox(height: 10), // Add spacing below the "Patient" text
                    const Text(
                      'PHC',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold, // Set the font weight (e.g., bold, normal)
                        fontStyle: FontStyle.italic, // Set the font style (e.g., italic, normal)
                        letterSpacing: 1.5, // Set the letter spacing
                      ),
                    ),
                    const Text(
                      'MOOKKANNOOR',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold, // Set the font weight (e.g., bold, normal)
                        fontStyle: FontStyle.italic, // Set the font style (e.g., italic, normal)
                        letterSpacing: 1.5, // Set the letter spacing
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  bottom: 50,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => const login()));
                      },
                      child: Container(
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: const Center(
                          child: Text(
                            'Welcome',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
