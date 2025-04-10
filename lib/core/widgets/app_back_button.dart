import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key, this.color, this.onTap});

  final Color? color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => onTap ?? Navigator.pop(context),
      icon: Icon(Icons.arrow_back_ios, size: 20.sp, color: color),
    );
  }
}
