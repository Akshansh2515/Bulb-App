import 'package:flutter/material.dart';
import 'package:bulb/gradient.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 21, 43, 155),
          Color.fromARGB(255, 10, 207, 229),
          Color.fromARGB(255, 208, 94, 11)
        ]),
      ),
    ),
  );
}
