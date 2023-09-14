import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(this.questionData, {super.key});

  final Map<String, Object> questionData;

  Color defineQuestionIndexColor(Map<String, Object> questionData) {
    if (questionData['correct_answer'] == questionData['user_answer']) {
      return Colors.lightBlueAccent;
    } else {
      return Colors.purpleAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: defineQuestionIndexColor(questionData),
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(10),
      child: Text(
        ((questionData['question_index'] as int) + 1).toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
