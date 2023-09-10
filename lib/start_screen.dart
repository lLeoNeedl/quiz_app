import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {

  final void Function() switchScreen;

  const StartScreen({super.key, required this.switchScreen});

  @override
  Widget build(Object context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(height: 80),
        const Text(
          'Learn Flutter the fun way',
          style: TextStyle(
            color: Color.fromARGB(255, 237, 223, 252),
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: switchScreen,
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          label: const Text('Start Quiz'),
          icon: const Icon(Icons.arrow_right_alt),
        ),
      ],
    );
  }
}
