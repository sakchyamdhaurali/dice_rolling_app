import 'package:dice_app/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( DiceApp());
}

class DiceApp extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
debugShowCheckedModeBanner: false,

home: HomeScreen(),
    );
  }
}

