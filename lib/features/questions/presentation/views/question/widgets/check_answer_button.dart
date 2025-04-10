import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/core/router/routes.dart';
import 'package:quiz_app/core/styles/text_styles.dart';
import 'package:quiz_app/gen/assets.gen.dart';
import 'package:quiz_app/generated/locale_keys.g.dart';

class CheckAnswerButton extends StatelessWidget {
  const CheckAnswerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, Routes.question),
      child: Container(
        width: 200.w,
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.startButton.path),
            fit: BoxFit.fill,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          LocaleKeys.checkAnswer.tr(),
          style: TextStyles.s20_semiBold.copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
