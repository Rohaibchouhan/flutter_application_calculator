// ignore_for_file: prefer_const_constructors, deprecated_member_use, must_be_immutable, library_private_types_in_public_api, camel_case_types

// ignore: unnecessary_import
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_calculator/widgets/calculator_butom.dart';

void main() {
  runApp(calculatorapp());
}

class calculatorapp extends StatefulWidget {
  const calculatorapp({Key? key}) : super(key: key);

  @override
  State<calculatorapp> createState() => _calculatorappState();
}

class _calculatorappState extends State<calculatorapp> {
  late int firstnum;
  late int secondnum;
  late String history = '';
  late String texttodisplay = '';
  late String res;
  late String operation;

  void btOnclick(String btval) {
    // ignore: avoid_print
    print(btval);
    if (btval == 'C') {
      texttodisplay = '';
      firstnum = 0;
      secondnum = 0;
      res = '';
    } else if (btval == 'AC') {
      texttodisplay = '';
      firstnum = 0;
      secondnum = 0;
      res = '';
      history = '';
    } else if (btval == '+/-') {
      if (texttodisplay[0] != '-') {
        // ignore: prefer_interpolation_to_compose_strings
        res = '-' + texttodisplay;
      } else {
        res = texttodisplay.substring(1);
      }
    } else if (btval == '<') {
      res = texttodisplay.substring(0, texttodisplay.length - 1);
    } else if (btval == '+' || btval == '-' || btval == 'x' || btval == '/') {
      firstnum = int.parse(texttodisplay);
      res = '';
      operation = btval;
    } else if (btval == '=') {
      secondnum = int.parse(texttodisplay);

      if (operation == '+') {
        res = (firstnum + secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == '-') {
        res = (firstnum - secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == 'x') {
        res = (firstnum * secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == '/') {
        res = (firstnum / secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
    } else {
      res = int.parse(texttodisplay + btval).toString();
    }
    setState(() {
      texttodisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(canvasColor: Colors.black),
      home: Scaffold(
        // ignore: avoid_unnecessary_containers
        body: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
              // ignore: sort_child_properties_last
              child: Padding(
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  history,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 134, 121, 121),
                  ),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Container(
              // ignore: sort_child_properties_last
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  texttodisplay,
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButtom(
                    text: 'AC',
                    textsize: 27,
                    fillcolor: 0xFFFFb5b5b5,
                    textcolor: 0xFFFF000000,
                    callback: btOnclick,
                  ),
                  CalculatorButtom(
                    text: 'C',
                    textsize: 29,
                    fillcolor: 0xFFFFb5b5b5,
                    textcolor: 0xFFFF000000,
                    callback: btOnclick,
                  ),
                  CalculatorButtom(
                    text: '<',
                    textsize: 29,
                    fillcolor: 0xFFFFb5b5b5,
                    textcolor: 0xFFFF000000,
                    callback: btOnclick,
                  ),
                  CalculatorButtom(
                    text: '/',
                    textsize: 35,
                    fillcolor: 0xFFFF9000,
                    textcolor: 0xffffffff,
                    callback: btOnclick,
                  )
                ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButtom(
                    text: '7',
                    textsize: 29,
                    fillcolor: 0xffff383838,
                    textcolor: 0xffffffff,
                    callback: btOnclick,
                  ),
                  CalculatorButtom(
                    text: '8',
                    textsize: 29,
                    fillcolor: 0xffff383838,
                    textcolor: 0xffffffff,
                    callback: btOnclick,
                  ),
                  CalculatorButtom(
                    text: '9',
                    textsize: 29,
                    fillcolor: 0xffff383838,
                    textcolor: 0xffffffff,
                    callback: btOnclick,
                  ),
                  CalculatorButtom(
                    text: 'x',
                    textsize: 30,
                    fillcolor: 0xFFFF9000,
                    textcolor: 0xffffffff,
                    callback: btOnclick,
                  )
                ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButtom(
                    text: '4',
                    textsize: 29,
                    fillcolor: 0xffff383838,
                    textcolor: 0xffffffff,
                    callback: btOnclick,
                  ),
                  CalculatorButtom(
                    text: '5',
                    textsize: 29,
                    fillcolor: 0xffff383838,
                    textcolor: 0xffffffff,
                    callback: btOnclick,
                  ),
                  CalculatorButtom(
                    text: '6',
                    textsize: 29,
                    fillcolor: 0xffff383838,
                    textcolor: 0xffffffff,
                    callback: btOnclick,
                  ),
                  CalculatorButtom(
                    text: '-',
                    textsize: 55,
                    fillcolor: 0xFFFF9000,
                    textcolor: 0xffffffff,
                    callback: btOnclick,
                  )
                ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButtom(
                    text: '1',
                    textsize: 29,
                    fillcolor: 0xffff383838,
                    textcolor: 0xffffffff,
                    callback: btOnclick,
                  ),
                  CalculatorButtom(
                    text: '2',
                    textsize: 29,
                    fillcolor: 0xffff383838,
                    textcolor: 0xffffffff,
                    callback: btOnclick,
                  ),
                  CalculatorButtom(
                    text: '3',
                    textsize: 29,
                    fillcolor: 0xffff383838,
                    textcolor: 0xffffffff,
                    callback: btOnclick,
                  ),
                  CalculatorButtom(
                    text: '+',
                    textsize: 35,
                    fillcolor: 0xFFFF9000,
                    textcolor: 0xffffffff,
                    callback: btOnclick,
                  )
                ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButtom(
                    text: '+/-',
                    textsize: 29,
                    fillcolor: 0xffff383838,
                    textcolor: 0xffffffff,
                    callback: btOnclick,
                  ),
                  CalculatorButtom(
                    text: '0',
                    textsize: 29,
                    fillcolor: 0xffff383838,
                    textcolor: 0xffffffff,
                    callback: btOnclick,
                  ),
                  CalculatorButtom(
                    text: '00',
                    textsize: 29,
                    fillcolor: 0xffff383838,
                    textcolor: 0xffffffff,
                    callback: btOnclick,
                  ),
                  CalculatorButtom(
                    text: '=',
                    textsize: 45,
                    fillcolor: 0xFFFF9000,
                    textcolor: 0xffffffff,
                    callback: btOnclick,
                  )
                ])
          ]),
        ),
      ),
    );
  }
}
