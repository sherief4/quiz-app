import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/core/styles/text_styles.dart';
import 'package:quiz_app/features/intro/presentation/cubit/intro_cubit.dart';
import 'package:quiz_app/gen/assets.gen.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final IntroCubit cubit = context.read<IntroCubit>();
    return BlocBuilder(
      bloc: cubit,
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 56.0),
          width: 256.w,
          height: 163.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.images.welcomeMessageContainer.path),
              fit: BoxFit.fill
            ),
          ),
          child: Text(
            cubit.getWelcomeText(),
            textAlign: TextAlign.center,
            style: TextStyles.s20_semiBold.copyWith(color: Colors.white),
          ),
        );
      },
    );
  }
}
