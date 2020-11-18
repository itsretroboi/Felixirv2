import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Checker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Center(
            child: SpinKitFadingFour(
              color: Colors.pink,
              size: 50,
            ),
          ),
        ),
        Container(
          height: 500,
          alignment: Alignment(0.1, 0),
          child: Text(
            "This Project is Locked. \nContact Admin ! \n\nSaswat - Developer \nSaksham - Coordinator\nPukit - Manager",
            style: TextStyle(fontSize: 16),
          ),
        )
      ],
    );
  }
}
