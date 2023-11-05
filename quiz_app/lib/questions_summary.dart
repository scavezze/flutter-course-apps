import 'dart:ffi';

import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                      decoration: BoxDecoration(
                        color: (data['user_answer'] == data['correct_answer'])
                            ? const Color.fromARGB(255, 54, 87, 177)
                            : const Color.fromARGB(255, 224, 87, 224),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              data['question'] as String,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 197, 133, 250),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              data['user_answer'] as String,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 148, 59, 221),
                              ),
                            ),
                            Text(
                              data['correct_answer'] as String,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 106, 83, 240),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
