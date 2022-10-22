import 'dart:async';

import 'package:calculator/screens/calculatorhome.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),
        ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Calculator()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.yellowAccent,
            Colors.greenAccent
          ],begin: Alignment.topLeft,end: Alignment.bottomRight)
        ),
        child: Center(child: Image.network("https://cdn4.iconfinder.com/data/icons/simplicio/128x128/calculator.png")),
      ),
    );
  }
}
