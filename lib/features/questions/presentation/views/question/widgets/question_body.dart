import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/gen/assets.gen.dart';

import 'check_answer_button.dart';
import 'question_container.dart';
import 'question_header.dart';

class QuestionBody extends StatelessWidget {
  const QuestionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          QuestionHeader(),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(16.0),
              child: Column(
                spacing: 24.0,
                children: [
                  QuestionContainer(),
                  CheckAnswerButton(),

                  QuestionContainer(),
                  CheckAnswerButton(),

                  QuestionContainer(),
                  CheckAnswerButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
