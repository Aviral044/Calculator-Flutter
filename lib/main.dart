import './widgets/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(CalcApp());
}

class CalcApp extends StatefulWidget {
  const CalcApp({Key? key}) : super(key: key);

  @override
  _CalcAppState createState() => _CalcAppState();
}

class _CalcAppState extends State<CalcApp> {
  int firstNum = 0;
  int secondNum = 0;
  String history = "";
  String textToDisplay = "";
  String res = '';
  String operation = '';

  void btnOnClick(String btnval) {
    print(btnval);
    if (btnval == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (btnval == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    } else if (btnval == '+' ||
        btnval == '-' ||
        btnval == 'X' ||
        btnval == '/') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnval;
    } else if (btnval == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'X') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnval).toString();
    }

    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Calculator'),
        ),
        backgroundColor: Color(0x292D36),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text(
                    history,
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 24,
                        color: Color(0xFF545F61),
                      ),
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    textToDisplay,
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              SizedBox(height: 40),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                CalcuatorButton(
                  text: 'AC',
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalcuatorButton(
                  text: 'C',
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalcuatorButton(
                  text: '<',
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalcuatorButton(
                  text: '/',
                  textSize: 20,
                  callback: btnOnClick,
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                CalcuatorButton(
                  text: '9',
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalcuatorButton(
                  text: '8',
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalcuatorButton(
                  text: '7',
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalcuatorButton(
                  text: 'X',
                  textSize: 20,
                  callback: btnOnClick,
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                CalcuatorButton(
                  text: '6',
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalcuatorButton(
                  text: '5',
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalcuatorButton(
                  text: '4',
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalcuatorButton(
                  text: '-',
                  textSize: 20,
                  callback: btnOnClick,
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                CalcuatorButton(
                  text: '3',
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalcuatorButton(
                  text: '2',
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalcuatorButton(
                  text: '1',
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalcuatorButton(
                  text: '+',
                  textSize: 20,
                  callback: btnOnClick,
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                CalcuatorButton(
                  text: '+/-',
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalcuatorButton(
                  text: '0',
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalcuatorButton(
                  text: '00',
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalcuatorButton(
                  text: '=',
                  textSize: 20,
                  callback: btnOnClick,
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
