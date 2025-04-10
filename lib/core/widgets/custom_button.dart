import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/core/extenstions/ui_extenstion.dart';
import 'package:quiz_app/core/styles/colors_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.title,
    this.backgroundColor,
    this.width,
    this.height,
    this.borderRadius,
    this.horizontalPadding,
    this.verticalPadding,
    this.isLoading = false,
    this.isActive = true,
    this.canPressedOnDisabled = false,
    this.loadingColor,
    this.shape,
    this.titleStyle,
    this.borderColor,
    this.withBorder = false,
    this.borderWidth,
    this.child,
  });

  final Widget? child;
  final String title;
  final void Function() onTap;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final double? horizontalPadding;
  final double? verticalPadding;
  final Color? backgroundColor;
  final BoxShape? shape;
  final bool isLoading;
  final bool isActive;
  final bool canPressedOnDisabled;
  final Color? loadingColor;
  final bool withBorder;
  final Color? borderColor;
  final double? borderWidth;

  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!isLoading && isActive) {
          onTap();
        }
      },
      child: Container(
        height: height ?? 42.h,
        width: width ?? double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding ?? 0,
          vertical: verticalPadding ?? 0,
        ),
        decoration: BoxDecoration(
          shape: shape ?? BoxShape.rectangle,
          color:
              !isActive
                  ? Colors.grey
                  : backgroundColor ?? ColorsManager.primaryColor,
          borderRadius:
              borderRadius ?? ((shape != BoxShape.circle) ? 8.br : null),
          border:
              withBorder
                  ? Border.all(
                    color: borderColor ?? ColorsManager.primaryColor,
                    width: borderWidth ?? 1,
                  )
                  : null,
        ),
        child:
            isLoading
                ? Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CupertinoActivityIndicator(
                      color: loadingColor ?? Colors.white,
                    ),
                  ],
                )
                : Align(
                  alignment: AlignmentDirectional.center,
                  child: child ?? Text(title, style: titleStyle),
                ),
      ),
    );
  }
}
