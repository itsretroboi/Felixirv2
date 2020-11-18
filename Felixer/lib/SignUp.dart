import 'package:Felixer/LoginPage.dart';
import 'package:Felixer/models/shared.dart';
import 'package:Felixer/models/size_config.dart';
import 'package:Felixer/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatefulWidget {
  final Function toggleView;

  SignUpPage({this.toggleView});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[
      Color.fromARGB(100, 0, 194, 255),
      Color.fromARGB(100, 219, 23, 189)
    ],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  //TextField

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: const Color(0xffffffff),
            body: Stack(
              children: <Widget>[
                //LOGIN BUTTON
                Container(
                  alignment: Alignment(-0.6, -0.8),
                  child: FlatButton(
                    onPressed: () {
                      widget.toggleView();
                    },
                    child: Text(
                      "LOGIN",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(100, 0, 194, 255),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                //SIGN UP BUTTON
                Container(
                    alignment: Alignment(0.6, -0.8),
                    child: FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(100, 0, 194, 255),
                                Color.fromARGB(100, 219, 23, 189)
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 120.0, maxHeight: 50.0),
                          alignment: Alignment.center,
                          child: Text(
                            "SIGN UP",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                Transform.translate(
                  offset: Offset(-73.4, 213.5),
                  child:
                      // Adobe XD layer: 'Background' (group)
                      SizedBox(
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.blockSizeVertical,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(15.0, 0.0, 537.8, 676.8),
                          size: Size(400, 676.8),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_chyfv7,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 7.8, 568.5, 661.2),
                          size: Size(415, 676.8),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_rwdvcz,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(15.0, 0.0, 488.1, 676.8),
                          size: Size(400, 676.8),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_bybv1v,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 300),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.6)),
                                fillColor: Colors.white.withOpacity(0.5),
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white.withOpacity(0.5),
                                        width: 1.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.pink[100], width: 1.0))),
                            validator: (val) =>
                                val.isEmpty ? 'Enter An Email !' : null,
                            onChanged: (val) {
                              setState(() => email = val);
                            },
                            style: TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                          ),
                          SizedBox(height: 50),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.6)),
                                fillColor: Colors.white.withOpacity(0.5),
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white.withOpacity(0.5),
                                        width: 1.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.pink[100], width: 1.0))),
                            validator: (val) => val.length < 8
                                ? 'Enter A Password 8 character long !'
                                : null,
                            style: TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                            obscureText: true,
                            onChanged: (val) {
                              setState(() => password = val);
                            },
                          )
                        ],
                      )),
                ),
                Container(
                  alignment: Alignment(0.05, 0.55),
                  child: RaisedButton(
                      color: Colors.white.withOpacity(0.8),
                      child: Text(
                        '         SIGN UP         ',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 23,
                          color: Color.fromARGB(100, 250, 25, 250),
                          letterSpacing: 0.096,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          setState(() => loading = true);
                          dynamic result =
                              await _auth.signupemail(email, password);
                          if (result == null) {
                            setState(() {
                              error = 'Please Provide Valid Email !';
                              loading = false;
                            });
                          }
                        }
                      }),
                ),
                Container(
                  alignment: Alignment(0, -0.6),
                  child: Text(
                    error,
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: SizeConfig.blockSizeVertical,
                  width: SizeConfig.blockSizeHorizontal,
                  child: Align(
                    alignment: Alignment(0, 1.14),
                    child: Image.asset(
                      'assets/images/felixer.png',
                      height: 250,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}

const String _svg_chyfv7 =
    '<svg viewBox="345.1 416.1 537.8 676.8" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#ff00b1ff"  /><stop offset="1.0" stop-color="#ff00c2ff"  /></linearGradient></defs><path transform="translate(112.02, 30.49)" d="M 770.8474731445313 388.9803466796875 C 770.8474731445313 388.9803466796875 684.9137573242188 365.6120300292969 545.454345703125 442.2480773925781 C 405.9949035644531 518.8841552734375 233.0645294189453 402.2375183105469 233.0645294189453 402.2375183105469 L 233.0645294189453 1062.408935546875 L 770.8474731445313 1062.408935546875 L 770.8474731445313 388.9803466796875 Z" fill="url(#gradient)" fill-opacity="0.4" stroke="none" stroke-width="1" stroke-opacity="0.4" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rwdvcz =
    '<svg viewBox="330.1 423.9 568.5 661.2" ><defs><linearGradient id="gradient" x1="0.751374" y1="0.267102" x2="-0.027265" y2="-0.033652"><stop offset="0.0" stop-color="#ffff0099"  /><stop offset="1.0" stop-color="#ff0099ff"  /></linearGradient></defs><path transform="matrix(0.999848, 0.017452, -0.017452, 0.999848, 341.49, 423.91)" d="M 557.17236328125 40.23276138305664 C 557.17236328125 40.23276138305664 476.9297790527344 -40.13932800292969 314.0763244628906 26.22100830078125 C 151.2225799560547 92.58130645751953 5.06180477142334 70.00061798095703 5.06180477142334 70.00061798095703 L -0.0479123592376709 651.5093383789063 L 460.5663757324219 649.1815795898438 L 557.17236328125 40.23276138305664 Z" fill="url(#gradient)" fill-opacity="0.35" stroke="none" stroke-width="1" stroke-opacity="0.35" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bybv1v =
    '<svg viewBox="345.1 416.1 488.1 676.8" ><defs><linearGradient id="gradient" x1="0.0" y1="0.147755" x2="0.758163" y2="1.056699"><stop offset="0.0" stop-color="#ff00ddf6"  /><stop offset="1.0" stop-color="#fff901af"  /></linearGradient></defs><path transform="translate(132.08, 8.07)" d="M 214.2947845458984 445.224609375 C 214.2947845458984 445.224609375 289.9183044433594 368.1541137695313 461.564453125 435.9667053222656 C 633.2111206054688 503.779296875 701.086669921875 500.9848022460938 701.086669921875 500.9848022460938 L 699.7919921875 1084.836059570313 L 212.9999847412109 1084.836059570313 L 214.2947845458984 445.224609375 Z" fill="url(#gradient)" fill-opacity="0.7" stroke="none" stroke-width="1" stroke-opacity="0.7" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
