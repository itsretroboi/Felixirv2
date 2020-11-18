import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalorieSearch extends StatefulWidget {
  @override
  _CalorieSearchState createState() => _CalorieSearchState();
}

class _CalorieSearchState extends State<CalorieSearch> {
  Icon search = Icon(Icons.search);
  Widget cusBar = Text(
    "Search Food Items",
    style: TextStyle(fontFamily: 'Montserrat', fontSize: 20),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cusBar,
        backgroundColor: Color.fromARGB(100, 245, 0, 150),
        actions: <Widget>[
          IconButton(
              icon: search,
              onPressed: () {
                setState(() {
                  if (this.search.icon == Icons.search) {
                    this.search = Icon(Icons.cancel);
                    this.cusBar = TextField(
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle:
                              TextStyle(color: Colors.white.withOpacity(0.5))),
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    );
                  } else {
                    this.search = Icon(Icons.search);
                    this.cusBar = Text(
                      "Search Food Items",
                      style: TextStyle(fontFamily: 'Montserrat', fontSize: 20),
                    );
                  }
                });
              })
        ],
      ),
    );
  }
}
