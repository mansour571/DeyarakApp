import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_utils/get_utils.dart';

class TextFieldInputt extends StatelessWidget {
  TextFieldInputt(
      {required this.text,
      required this.function,
      required this.icon,
      required this.formatter,
      this.keybordtype,
      required this.password,
      required this.colorr,
      required this.controllerr,
      this.validator});
  TextEditingController controllerr;
  Color? colorr;
  String? errormessage;
  String? text;
  Function? function;
  IconData? icon;
  String? Function(String?)? validator;
  List<TextInputFormatter> formatter =
      []; // ex : FilteringTextInputFormatter.digitsOnly
  TextInputType? keybordtype; // ex : TextInputType.phone
  bool password; //ex true or false

  @override
  Widget build(BuildContext context) {
    var textfieldscolor = colorr!;
    double radius = 15;
    var querywidth = MediaQuery.of(context).size.width;
    var queryheight = MediaQuery.of(context).size.height;

    return Container(
      height: queryheight / 12,
      color: Colors.transparent,
      padding: EdgeInsets.only(left: querywidth / 15, right: querywidth / 15),
      child: Form(
        child: TextFormField(
          controller: controllerr,
          validator: validator,
          obscureText: password,
          inputFormatters: formatter,
          keyboardType: keybordtype,
          textAlignVertical: TextAlignVertical.center,
          cursorRadius: Radius.circular(radius),
          cursorColor: textfieldscolor,
          style: TextStyle(
            color: textfieldscolor,
            fontSize: querywidth / 25,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w300,
          ),
          decoration: InputDecoration(
            border: UnderlineInputBorder(
              // borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide(width: 2, color: textfieldscolor),
            ),
            disabledBorder: UnderlineInputBorder(
              // borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide(width: 2, color: textfieldscolor),
            ),
            enabledBorder: UnderlineInputBorder(
              // borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide(width: 2, color: textfieldscolor),
            ),
            focusedBorder: UnderlineInputBorder(
              // borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide(width: 2, color: textfieldscolor),
            ),
            errorBorder: UnderlineInputBorder(
              // borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide(
                  width: 2, color: const Color.fromARGB(255, 255, 0, 0)),
            ),
            labelStyle: TextStyle(
              color: textfieldscolor,
              fontSize: querywidth / 30,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w300,
            ),
            labelText: '$text',
            prefixIcon: Icon(
              icon,
              color: textfieldscolor,
              size: querywidth / 15,
            ),
          ),
        ),
      ),
    );
  }
}
