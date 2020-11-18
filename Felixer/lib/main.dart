import 'package:Felixer/Homepage.dart';
import 'package:Felixer/LoginPage.dart';
import 'package:Felixer/SignUp.dart';
import 'package:Felixer/SplashScreen.dart';
import 'package:Felixer/StartingPage.dart';
import 'package:Felixer/calorie.dart';
import 'package:Felixer/defaultcheck.dart';
import 'package:Felixer/searchcalorie.dart';
import 'package:Felixer/services/auth.dart';
import 'package:Felixer/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:Felixer/OnboardingDetails11.dart';
import 'package:provider/provider.dart';
import 'package:Felixer/models/user.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Checker(),
      ),
    ),
  );
}

/*class Homepage extends StatelessWidget {
  @override

  runApp(StreamProvider<User>.value(
    value: AuthService().user,


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Welcome to Flutter',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Hello World',
        ),
      ),
    );
  }
}
*/
