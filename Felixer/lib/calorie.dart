import 'package:Felixer/Homepage.dart';
import 'package:Felixer/searchcalorie.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:Felixer/models/fancy.dart';

class Calorie extends StatelessWidget {
  var veg = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: ListView(
          children: [
            TodayCounter(),
            TodayStats(),
            Backbutton(),
          ],
          padding: EdgeInsets.all(20),
        ),
      ),
      appBar: null,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CalorieSearch()));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        elevation: 5,
      ),
    );
  }
}

//back Buuton
class Backbutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      height: 395,
      child: Align(
        alignment: Alignment(-1, 1),
        child: FlatButton.icon(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Homepage()));
            },
            icon: Icon(Icons.arrow_back),
            label: Text('BACK')),
      ),
    ));
  }
}

/// Calorie counter for the day
class TodayCounter extends StatelessWidget {
  Widget build(BuildContext context) {
    return FancyCard(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 15),
      borderRadius: 15,
      gradient: Gradients.blush,
      boxShadow: BoxShadow(
        color: Colors.red[200],
        blurRadius: 5.0,
        offset: Offset(1, 1),
      ),
      child: Row(children: [
        Icon(
          Icons.sentiment_very_satisfied,
          size: 50,
          color: Colors.white.withAlpha(200),
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "1367",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              Text(
                "calories today",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

/// Food stats for the day
class TodayStats extends StatelessWidget {
  Widget build(BuildContext context) {
    return FancyCard(
      padding: const EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 15),
      borderRadius: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: <Widget>[
                Expanded(child: Text("Total calories today:")),
                Text(
                  "1367",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(FontAwesomeIcons.seedling, color: Colors.green),
                  ),
                  Text("Vegetables"),
                  Expanded(child: Text("371", textAlign: TextAlign.end)),
                ],
              ),
            ),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 1,
                  color: Colors.grey[300],
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child:
                        Icon(FontAwesomeIcons.appleAlt, color: Colors.red[400]),
                  ),
                  Text("Fruits"),
                  Expanded(child: Text("114", textAlign: TextAlign.end)),
                ],
              ),
            ),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 1,
                  color: Colors.grey[300],
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(FontAwesomeIcons.drumstickBite,
                        color: Colors.orange[700]),
                  ),
                  Text("Meat"),
                  Expanded(child: Text("246", textAlign: TextAlign.end)),
                ],
              ),
            ),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 1,
                  color: Colors.grey[300],
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(FontAwesomeIcons.candyCane, color: Colors.pink),
                  ),
                  Text("Other"),
                  Expanded(child: Text("56", textAlign: TextAlign.end)),
                ],
              ),
            ),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 1,
                  color: Colors.grey[300],
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      boxShadow: BoxShadow(
        color: Colors.grey[400],
        blurRadius: 3.0,
        offset: Offset(1, 1),
      ),
    );
  }
}
