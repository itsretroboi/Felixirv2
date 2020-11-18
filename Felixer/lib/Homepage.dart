import 'dart:ui';

import 'package:Felixer/LoginPage.dart';
import 'package:Felixer/calorie.dart';
import 'package:Felixer/services/auth.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
                color: Colors.blue[50],
                height: 1200,
                width: 1000,
                child: Align(
                    alignment: Alignment(0, -1.75),
                    child: Image.asset(
                      "assets/images/Path2.png",
                      fit: BoxFit.fitWidth,
                      width: size.width,
                    ))),
            Container(
              child: Align(
                alignment: Alignment(-0.95, 1),
                child: Image.asset(
                  'assets/images/felixer.png',
                  height: 130,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            //Sleep

            Container(
                height: 100,
                alignment: Alignment(0.95, -0.2),
                child: FlatButton.icon(
                    onPressed: () async {
                      await _auth.signOut();
                      //Navigator.pushReplacement(context,
                      //  MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    icon: Icon(Icons.person),
                    label: Text(
                      'LOGOUT',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ))),
            //Design Elements
            Stack(
              children: [
                Container(
                  height: 300,
                  child: Align(
                    alignment: Alignment(0, 36.5),
                    child: Image.asset(
                      'assets/images/card.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  child: Align(
                    alignment: Alignment(0, 23.4),
                    child: Image.asset(
                      'assets/images/cardv2.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  child: Align(
                    alignment: Alignment(0, 22.5),
                    child: Image.asset(
                      'assets/images/card.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: 700,
                  child: Align(
                    alignment: Alignment(0, 0),
                    child: Image.asset(
                      'assets/images/mask.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            // Buttons & Labels
            Stack(
              children: [
                // CALORIE
                Container(
                    height: 600,
                    child: Align(
                      alignment: Alignment(-0.95, 0.59),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Calorie()));
                        },
                        child: Text(
                          'Calorie',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontSize: 65,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5),
                        ),
                      ),
                    )),
                // WATER
                Container(
                    height: size.height,
                    child: Align(
                      alignment: Alignment(-0.95, 0.49),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Calorie()));
                        },
                        child: Text(
                          'Water',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontSize: 65,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5),
                        ),
                      ),
                    )),
                // Meditation
                Container(
                    height: size.height,
                    child: Align(
                      alignment: Alignment(2, 0.85),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Calorie()));
                        },
                        child: Text(
                          'Meditation',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontSize: 59,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.4),
                        ),
                      ),
                    )),
                Container(
                    height: size.height,
                    child: Align(
                      alignment: Alignment(0, 1.13),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Sleep Tracker',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.4),
                        ),
                      ),
                    )),
              ],
            ),
            //LAbels
            Column(
              children: [
                Container(
                  height: 600,
                  width: size.width,
                  child: Align(
                      alignment: Alignment(-0.7, 0.695),
                      child: Text(
                        'Calories Consumed',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontFamily: 'Montserrat',
                            fontSize: 19,
                            fontWeight: FontWeight.w400),
                      )),
                ),
                Container(
                  height: 100,
                  width: size.width,
                  child: Align(
                      alignment: Alignment(-0.7, 0),
                      child: Text(
                        'Total Water Intake',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontFamily: 'Montserrat',
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      )),
                ),
                Container(
                  height: 100,
                  width: size.width,
                  child: Align(
                      alignment: Alignment(-0.65, 0.9),
                      child: Text(
                        'Yoga & Meditation Videos',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontFamily: 'Montserrat',
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      )),
                ),
                Container(
                  height: 100,
                  width: size.width,
                  child: Align(
                      alignment: Alignment(-0.45, 1.35),
                      child: Text(
                        'COMING SOON WITH PREMIUM !',
                        style: TextStyle(
                            color: Colors.yellow.withOpacity(0.9),
                            fontFamily: 'Montserrat',
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
