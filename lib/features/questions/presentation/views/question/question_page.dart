import 'package:flutter/material.dart';

import 'widgets/question_body.dart';
class QuestionPage extends StatelessWidget {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: QuestionBody(),
    );
  }
}
