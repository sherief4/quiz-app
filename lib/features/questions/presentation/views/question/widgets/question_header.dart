import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/core/styles/colors_manager.dart';
import 'package:quiz_app/core/styles/text_styles.dart';
import 'package:quiz_app/core/widgets/app_svg_image.dart';
import 'package:quiz_app/gen/assets.gen.dart';

class QuestionHeader extends StatelessWidget {
  const QuestionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: ColorsManager.backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Assets.icons.logo.image(width: 32.w, height: 32.h),
          Column(
            children: [
              Text("782", style: TextStyles.s16_semiBold),
              Text("pts", style: TextStyles.s12_medium),
            ],
          ),
          AppSVGImage(image: Assets.svgs.statistics, width: 24.w, height: 24.h),
          Container(
            width: 32.w,
            height: 32.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(Assets.images.avatar.path),
              ),
            ),

          ),
        ],
      ),
    );
  }
}
