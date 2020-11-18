import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/gradient_xd_transform.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Felixer/models/size_config.dart';

class OnboardingDetails11 extends StatelessWidget {
  OnboardingDetails11({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(0, 50),
            child:
                // Adobe XD layer: 'Background' (group)
                SizedBox(
              width: 877.0,
              height: 1254.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(-5, 464.0, 479.8, 479.8),
                    size: Size(400, 600),
                    child: SvgPicture.string(
                      _svg_e1y09c,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(-20, -25, 690.4, 1235.9),
                    size: Size(400, 1200),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_kwl11i,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(-80, -58, 659.9, 915.4),
                    size: Size(400, 800),
                    pinLeft: true,
                    pinTop: true,
                    child: SvgPicture.string(
                      _svg_h8a9bp,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(186.0, 806.0),
            child: SizedBox(
              width: SizeConfig.screenWidth,
              height: SizeConfig.blockSizeVertical,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 11.0, 11.0),
                    size: Size(43.0, 11.0),
                    fixedWidth: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        gradient: RadialGradient(
                          center: Alignment(0.0, 0.0),
                          radius: 0.5,
                          colors: [
                            const Color(0xffffffff),
                            const Color(0xff09bcff)
                          ],
                          stops: [0.0, 1.0],
                          transform: GradientXDTransform(1.0, 0.0, 0.0, 1.0,
                              0.0, 0.0, Alignment(0.0, 0.0)),
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(16.0, 0.0, 11.0, 11.0),
                    size: Size(43.0, 11.0),
                    fixedWidth: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(32.0, 0.0, 11.0, 11.0),
                    size: Size(43.0, 11.0),
                    fixedWidth: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_e1y09c =
    '<svg viewBox="326.1 435.6 479.8 479.8" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#ff00b1ff"  /><stop offset="1.0" stop-color="#ff00c2ff"  /></linearGradient></defs><path transform="translate(93.0, 50.0)" d="M 712.8903198242188 388.0042114257813 C 712.8903198242188 388.0042114257813 636.2177734375 371.4378051757813 511.7880249023438 425.7670593261719 C 387.3582763671875 480.0962829589844 233.0645599365234 397.4025268554688 233.0645599365234 397.4025268554688 L 233.0645599365234 865.4150390625 L 712.8903198242188 865.4150390625 L 712.8903198242188 388.0042114257813 Z" fill="url(#gradient)" fill-opacity="0.4" stroke="none" stroke-width="1" stroke-opacity="0.4" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kwl11i =
    '<svg viewBox="300.2 -10.0 690.4 1235.9" ><defs><linearGradient id="gradient" x1="0.751374" y1="0.267102" x2="-0.027265" y2="-0.033652"><stop offset="0.0" stop-color="#ffff0099"  /><stop offset="1.0" stop-color="#ff0099ff"  /></linearGradient></defs><path transform="matrix(0.999848, 0.017452, -0.017452, 0.999848, 169.81, -393.5)" d="M 827.5988159179688 457.8740234375 C 827.5988159179688 457.8740234375 729.8793334960938 305.5631713867188 533.4103393554688 429.137939453125 C 336.9411926269531 552.7127075195313 159.9468688964844 508.7428588867188 159.9468688964844 508.7428588867188 L 158.4649658203125 1605.163208007813 L 715.6550903320313 1605.163208007813 L 827.5988159179688 457.8740234375 Z" fill="url(#gradient)" fill-opacity="0.35" stroke="none" stroke-width="1" stroke-opacity="0.35" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_h8a9bp =
    '<svg viewBox="113.3 -28.4 659.9 915.4" ><defs><linearGradient id="gradient" x1="0.0" y1="0.147755" x2="0.758163" y2="1.056699"><stop offset="0.0" stop-color="#ff00ddf6"  /><stop offset="1.0" stop-color="#fff901af"  /></linearGradient></defs><path transform="translate(-99.73, -436.41)" d="M 214.7505798339844 458.3309326171875 C 214.7505798339844 458.3309326171875 316.9978332519531 354.0853881835938 549.0730590820313 445.8087158203125 C 781.1490478515625 537.531982421875 872.9205932617188 533.7522583007813 872.9205932617188 533.7522583007813 L 871.1699829101563 1323.4697265625 L 213 1323.4697265625 L 214.7505798339844 458.3309326171875 Z" fill="url(#gradient)" fill-opacity="0.7" stroke="none" stroke-width="1" stroke-opacity="0.7" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
