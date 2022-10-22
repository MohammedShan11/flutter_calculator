import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellowAccent,
          title: Center(child: Text("Calculator",style:GoogleFonts.kalam(textStyle: TextStyle(
            fontSize: 25,fontWeight: FontWeight.bold,color: Colors.redAccent
          )
          ),
          ),),
        ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.yellowAccent,
            Colors.greenAccent
          ],begin: Alignment.topLeft,end: Alignment.bottomRight)
        ),
      ),
    );
  }
}
