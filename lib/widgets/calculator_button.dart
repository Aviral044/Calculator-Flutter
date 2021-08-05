import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcuatorButton extends StatelessWidget {
  final String text;
  final double textSize;
  final Function callback;

  const CalcuatorButton({
    required this.text,
    required this.textSize,
    required this.callback,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(16.0),
            primary: Colors.white,
            backgroundColor: Colors.teal,
          ),
          onPressed: () {
            callback(text);
          },
          child: Text(
            text,
            style: GoogleFonts.rubik(
                textStyle: TextStyle(
              fontSize: textSize,
            )),
          ),
        ),
      ),
    );
  }
}
