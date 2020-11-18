// import 'package:Felixer/main.dart';
import 'dart:async';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Felixer/StartingPage.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => StartingPage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(-42.9, 76.2),
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 37.6, 519.2, 826.4),
                    size: Size(400, 1150.7),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_5jqb5i,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.8, 0.0, 545.2, 1150.7),
                    size: Size(400, 1150.7),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_50so3f,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 37.6, 502.6, 826.4),
                    size: Size(400, 1150.7),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_mjqpj,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Image Logo Felixer
          Container(
            height: double.infinity,
            child: Image.asset(
              'assets/images/felixer.png',
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
          )
        ],
      ),
    );
  }
}

const String _svg_5jqb5i =
    '<svg viewBox="339.3 440.8 519.2 826.4" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#ff00b1ff"  /><stop offset="1.0" stop-color="#ff00c2ff"  /></linearGradient></defs><path transform="translate(106.21, 55.16)" d="M 752.2562255859375 389.7218933105469 C 752.2562255859375 389.7218933105469 669.2932739257813 361.1863098144531 534.655029296875 454.7682189941406 C 400.0169067382813 548.35009765625 233.0645446777344 405.9104309082031 233.0645446777344 405.9104309082031 L 233.0645446777344 1212.059814453125 L 752.2562255859375 1212.059814453125 L 752.2562255859375 389.7218933105469 Z" fill="url(#gradient)" fill-opacity="0.4" stroke="none" stroke-width="1" stroke-opacity="0.4" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_50so3f =
    '<svg viewBox="340.0 403.2 545.2 1150.7" ><defs><linearGradient id="gradient" x1="0.751374" y1="0.267102" x2="-0.027265" y2="-0.033652"><stop offset="0.0" stop-color="#ffff0099"  /><stop offset="1.0" stop-color="#ff0099ff"  /></linearGradient></defs><path transform="matrix(0.999848, 0.017452, -0.017452, 0.999848, 360.03, 403.44)" d="M 525.2958374023438 72.11835479736328 C 525.2958374023438 72.11835479736328 447.8616333007813 -70.23631286621094 293.6242065429688 44.27228927612305 C 139.3865966796875 158.7809295654297 -0.08520395308732986 117.151985168457 -0.08520395308732986 117.151985168457 L 2.440151691436768 1139.37548828125 L 441.040771484375 1141.372436523438 L 525.2958374023438 72.11835479736328 Z" fill="url(#gradient)" fill-opacity="0.35" stroke="none" stroke-width="1" stroke-opacity="0.35" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mjqpj =
    '<svg viewBox="339.3 440.8 502.6 826.4" ><defs><linearGradient id="gradient" x1="0.0" y1="0.147755" x2="0.758163" y2="1.056699"><stop offset="0.0" stop-color="#ff00ddf6"  /><stop offset="1.0" stop-color="#fff901af"  /></linearGradient></defs><path transform="translate(126.27, 32.74)" d="M 214.3332061767578 453.4437561035156 C 214.3332061767578 453.4437561035156 292.2030944824219 359.3313903808594 468.9478759765625 442.1387634277344 C 645.6931762695313 524.9461669921875 715.5849609375 521.5338134765625 715.5849609375 521.5338134765625 L 714.251708984375 1234.486938476563 L 212.9999847412109 1234.486938476563 L 214.3332061767578 453.4437561035156 Z" fill="url(#gradient)" fill-opacity="0.7" stroke="none" stroke-width="1" stroke-opacity="0.7" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
