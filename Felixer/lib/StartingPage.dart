import 'package:Felixer/models/size_config.dart';
import 'package:Felixer/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StartingPage extends StatelessWidget {
  StartingPage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(-27.9, 408.6),
            child:
                // Adobe XD layer: 'Background' (group)
                SizedBox(
              width: 507.0,
              height: 828.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 41.0, 479.8, 479.8),
                    size: Size(400, 827.9),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_e1y09c,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(16.2, 0.0, 491.1, 827.9),
                    size: Size(400, 827.9),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_1jl49g,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(3.9, 46.2, 443.2, 446.3),
                    size: Size(400, 827.9),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_oh4kv,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(110, 250.0),
            child: FlatButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Wrapper()));
              },
              child: Text(
                'LET\'S START',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 25,
                  color: const Color(0xbf000000),
                  letterSpacing: 0.096,
                  fontWeight: FontWeight.w600,
                  height: 1.4583333333333333,
                  shadows: [
                    Shadow(
                      color: Color.fromARGB(100, 236, 3, 252),
                      offset: Offset(4, 3),
                      blurRadius: 6,
                    )
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
              offset: Offset(5, 550.0),
              child: Container(
                child: Image.asset(
                  'assets/images/felixer.png',
                  height: 300,
                  width: 400,
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                ),
              )),
        ],
      ),
    );
  }
}

const String _svg_e1y09c =
    '<svg viewBox="326.1 435.6 479.8 479.8" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#ff00b1ff"  /><stop offset="1.0" stop-color="#ff00c2ff"  /></linearGradient></defs><path transform="translate(93.0, 50.0)" d="M 712.8903198242188 388.0042114257813 C 712.8903198242188 388.0042114257813 636.2177734375 371.4378051757813 511.7880249023438 425.7670593261719 C 387.3582763671875 480.0962829589844 233.0645599365234 397.4025268554688 233.0645599365234 397.4025268554688 L 233.0645599365234 865.4150390625 L 712.8903198242188 865.4150390625 L 712.8903198242188 388.0042114257813 Z" fill="url(#gradient)" fill-opacity="0.4" stroke="none" stroke-width="1" stroke-opacity="0.4" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1jl49g =
    '<svg viewBox="342.2 394.6 491.1 827.9" ><defs><linearGradient id="gradient" x1="0.751374" y1="0.267102" x2="-0.027265" y2="-0.033652"><stop offset="0.0" stop-color="#ffff0099"  /><stop offset="1.0" stop-color="#ff0099ff"  /></linearGradient></defs><path transform="matrix(0.999848, 0.017452, -0.017452, 0.999848, 204.74, 11.1)" d="M 635.3314208984375 432.3973388671875 C 635.3314208984375 432.3973388671875 565.6904296875 330.4258117675781 425.6743774414063 413.1586303710938 C 285.6582336425781 495.8914184570313 159.5210571289063 466.4537963867188 159.5210571289063 466.4537963867188 L 158.4649658203125 1200.502807617188 L 555.5533447265625 1200.502807617188 L 635.3314208984375 432.3973388671875 Z" fill="url(#gradient)" fill-opacity="0.35" stroke="none" stroke-width="1" stroke-opacity="0.35" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_oh4kv =
    '<svg viewBox="330.0 440.8 443.2 446.3" ><defs><linearGradient id="gradient" x1="0.0" y1="0.147755" x2="0.758163" y2="1.056699"><stop offset="0.0" stop-color="#ff00ddf6"  /><stop offset="1.0" stop-color="#fff901af"  /></linearGradient></defs><path transform="translate(117.0, 32.74)" d="M 214.1756591796875 432.5643615722656 C 214.1756591796875 432.5643615722656 282.8427734375 381.7438354492188 438.6995849609375 426.4596862792969 C 594.5569458007813 471.1755065917969 656.1887817382813 469.3328552246094 656.1887817382813 469.3328552246094 L 655.0131225585938 854.3262939453125 L 213 854.3262939453125 L 214.1756591796875 432.5643615722656 Z" fill="url(#gradient)" fill-opacity="0.7" stroke="none" stroke-width="1" stroke-opacity="0.7" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
