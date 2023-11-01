import 'package:dice_roll/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          [
            Color.fromARGB(255, 199, 5, 53),
            Color.fromARGB(255, 216, 176, 224),
          ],
        ),
      ),
    ),
  );
}
