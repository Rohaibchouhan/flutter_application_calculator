// ignore_for_file: deprecated_member_use,, use_key_in_widget_constructors,


import 'package:flutter/material.dart';

class CalculatorButtom extends StatelessWidget {
  final String text;
  final int fillcolor;
  final int textcolor;
  final double textsize;
  final Function callback;

  const CalculatorButtom({
      required this.text,
      required this.fillcolor,
      required this.textcolor,
      required this.textsize,
      required this.callback
     });

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.all(10),
        child: SizedBox(
          height: 70,
          width: 70,
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            onPressed: () => callback(text),
            color: Color(fillcolor),
            // ignore: sort_child_properties_last

            child: Text(
              text,
              // textScaleFactor: 2.2,
              style:  TextStyle(
                  fontSize: (textsize),
                  fontWeight: FontWeight.w500,
                  color: Color(textcolor),
              ),
            ),
          ),
        ),
      );
}
