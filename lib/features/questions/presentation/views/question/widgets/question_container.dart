import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/core/extenstions/ui_extenstion.dart';
import 'package:quiz_app/core/styles/colors_manager.dart';
import 'package:quiz_app/core/styles/text_styles.dart';
import 'package:quiz_app/core/widgets/app_svg_image.dart';
import 'package:quiz_app/gen/assets.gen.dart';

class QuestionContainer extends StatelessWidget {
  const QuestionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: 32.br,
        image: DecorationImage(
          image: AssetImage(Assets.images.question.path),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        spacing: 24.0,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 24.0,

              children: [
                SizedBox(height: 72.h),

                Text(
                  "Why did John Brown's attack at Harper's Ferry shock the nation?",
                  style: TextStyles.s22_semiBold,
                ),

                Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: ColorsManager.primaryColor,
                    borderRadius: 12.br,
                  ),
                  child: Text(
                    "It created fears that white northerner's would initiate acts of violence to end slavery",
                    style: TextStyles.s12_medium,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: 12.br,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Text(
                    "It was successful and resulted in hundreds of slaves being freed",
                    style: TextStyles.s12_medium,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: 12.br,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Text(
                    "It was successful and resulted in hundreds of slaves being freed",
                    style: TextStyles.s12_medium,
                  ),
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: 32.rBr,
                bottomRight: 32.rBr,
              ),
            ),
            child: Row(
              children: [
                Row(
                  spacing: 12.0,
                  children: [
                    AppSVGImage(image: Assets.svgs.like, width: 24.w, height: 24.h),
                    AppSVGImage(image: Assets.svgs.chat, width: 24.w, height: 24.h),
                    AppSVGImage(image: Assets.svgs.send, width: 24.w, height: 24.h),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Asked by History 101", style: TextStyles.s12_regular),
                    Text("2 hrs ago", style: TextStyles.s10_regular),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
