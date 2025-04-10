import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/gen/assets.gen.dart';

import 'categories/categories_wrap.dart';
import 'lets_start_button.dart';
import 'welcome_header.dart';

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const WelcomeHeader(),
            const SizedBox(width: double.infinity, height: 32.0),
            Assets.icons.logo.image(width: 84.w, height: 116.h),
            const CategoriesWrap(),
            const LetsStartButton(),
          ],
        ),
      ),
    );
  }
}
