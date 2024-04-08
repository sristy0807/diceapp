import 'package:flutter/material.dart';
import 'package:diceapp/gradient_container.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 7, 247, 255),
        body: GradientContainer.purple(),
      ),
    ),
  );
}

