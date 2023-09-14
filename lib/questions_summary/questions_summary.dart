import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary/question_details.dart';
import 'package:quiz_app/questions_summary/question_identifier.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map(
                (data) => Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    QuestionIdentifier(data),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: QuestionDetails(data),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
