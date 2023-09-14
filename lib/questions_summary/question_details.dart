import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionDetails extends StatelessWidget {
  const QuestionDetails(this.questionData, {super.key});

  final Map<String, Object> questionData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          questionData['question'] as String,
          style: GoogleFonts.lato(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          questionData['user_answer'] as String,
          style: GoogleFonts.lato(
            color: const Color.fromARGB(255, 162, 85, 244),
          ),
        ),
        Text(
          questionData['correct_answer'] as String,
          style: GoogleFonts.lato(
            color: const Color.fromARGB(255, 107, 133, 188),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
