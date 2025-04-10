import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/core/extenstions/ui_extenstion.dart';
import 'package:quiz_app/core/styles/colors_manager.dart';
import 'package:quiz_app/core/styles/text_styles.dart';
import 'package:quiz_app/features/intro/presentation/cubit/intro_cubit.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    final IntroCubit cubit = context.read<IntroCubit>();
    return BlocBuilder(
      bloc: cubit,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsetsDirectional.only(end: 16.0, bottom: 16.0),
          child: GestureDetector(
            onTap: () => cubit.selectCategory(category),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color:
                    cubit.selectedCategories.contains(category)
                        ? ColorsManager.primaryColor
                        : Colors.transparent,
                borderRadius: 16.br,
                border: Border.all(
                  color:
                      cubit.selectedCategories.contains(category)
                          ? Colors.transparent
                          : Colors.white,
                ),
              ),
              child: Text(category, style: TextStyles.s20_semiBold),
            ),
          ),
        );
      },
    );
  }
}
