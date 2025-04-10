import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/core/styles/colors_manager.dart';
import 'package:quiz_app/core/widgets/image_widget.dart';
import 'package:quiz_app/gen/assets.gen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // _getData();
  }

  // Future<void> _getData() async {
  //   await Utils.getCachedData();
  //   Future.delayed(const Duration(seconds: 2), () {

  //     // ignore: use_build_context_synchronously
  //     Navigator.of(context).pushNamedAndRemoveUntil(
  //       AppConstants.isFirstTime
  //           ? Routes.introApp
  //           : AppConstants.token.isNotEmpty
  //               ? Routes.home
  //               : Routes.login,
  //       (route) => false,
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.primaryColor,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Assets.images.splashLogo.image(width: 271.w, height: 170.h),
          ),
        ],
      ),
    );
  }
}
