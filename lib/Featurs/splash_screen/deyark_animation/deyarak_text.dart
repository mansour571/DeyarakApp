import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:deyarakapp/Featurs/AddProperty/Widgets/RadioButtom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class deyarka_text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var querywidth = MediaQuery.of(context).size.width;
    var queryheight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Container(
      color: Colors.transparent,
      child: Center(
        child: Animate(
            effects: [
              MoveEffect(
                  begin: Offset(-querywidth, 0),
                  duration: Duration(seconds: 1),
                  delay: Duration(seconds: 1))
            ],
            child: Container(
              child: Text(
                'deyarak',
                style: TextStyle(
                  color: Color(0xffFF725E),
                  fontFamily: 'ZenTokyoZoo',
                  fontSize: 100,
                ),
              ),
            )),
      ),
      // height: queryheight / 6,
    );
  }
}




              // child: TextLiquidFill(
              //   boxWidth: querywidth,
              //   textAlign: TextAlign.center,
              //   loadDuration: Duration(seconds: 4),
              //   text: 'DeYarak',
              //   waveColor: Color(0xffFF725E),
              //   boxBackgroundColor: Colors.white,
              //   textStyle: TextStyle(
              //     fontFamily: 'ZenTokyoZoo',
              //     fontSize: querywidth / 3.4,
              //   ),
              //   boxHeight: queryheight / 5,
              // ),
