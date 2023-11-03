import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(75, 255, 255, 255),
          ),
          const SizedBox(height: 50),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.white,
                ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 14,
                )),
            icon: const Icon(
              Icons.arrow_right_alt,
            ),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
