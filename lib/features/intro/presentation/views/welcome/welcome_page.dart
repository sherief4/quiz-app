import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/core/styles/colors_manager.dart';
import 'package:quiz_app/features/intro/presentation/cubit/intro_cubit.dart';

import 'widgets/welcome_body.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
  context.read<IntroCubit>().changeWelcomeIndex();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsManager.backgroundColor,
      body: WelcomeBody(),
    );
  }
}
