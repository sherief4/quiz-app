import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/features/intro/presentation/cubit/intro_cubit.dart';

import 'category_widget.dart';

class CategoriesWrap extends StatelessWidget {
  const CategoriesWrap({super.key});

  @override
  Widget build(BuildContext context) {
    final IntroCubit cubit = context.read<IntroCubit>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        children: List.generate(
          cubit.categories.length,
          (index) => CategoryWidget(category: cubit.categories[index]),
        ),
      ),
    );
  }
}
