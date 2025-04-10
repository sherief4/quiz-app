import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/core/extenstions/ui_extenstion.dart';
import 'package:quiz_app/core/styles/colors_manager.dart';
import 'package:quiz_app/core/styles/text_styles.dart';

class AppFormField extends StatelessWidget {
  const AppFormField({
    super.key,
    this.controller,
    this.onChanged,
    this.onSaved,
    this.onTap,
    this.onSubmitted,
    this.isPassword = false,
    this.validator,
    this.validationText,
    this.isDisableValidation = false,
    this.fillColor,
    this.isShowBorderLine = true,
    this.borderColor,
    this.focusedBorderColor,
    this.borderRadius,
    this.keyboardType = TextInputType.text,
    this.labelText,
    this.labelStyle,
    this.hintText,
    this.hintStyle,
    this.inputStyle,
    this.textAlign,
    this.isDense = true,
    this.prefixIcon,
    this.suffixIcon,
    this.contentPadding,
    this.inputAction,
    this.isEnable = true,
    this.readOnly = false,
    this.maxLines,
    this.autofocus = false,
    this.focusNode,
    this.inputFormatters,
    this.maxLength,
    this.minLines,
    this.initialValue,
    this.withErrorBorder = true,
    this.withShadow = false,
  });

  final TextEditingController? controller;
  final Function(String value)? onChanged;
  final Function(String?)? onSaved;
  final Function()? onTap;
  final Function(String value)? onSubmitted;
  final bool isPassword;
  final String? Function(String?)? validator;
  final String? validationText;
  final bool isDisableValidation;
  final Color? fillColor;
  final bool isShowBorderLine;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final double? borderRadius;
  final TextInputType keyboardType;
  final String? labelText;
  final TextStyle? labelStyle;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextStyle? inputStyle;
  final TextAlign? textAlign;
  final bool isDense;
  final int? maxLength;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final bool isEnable;
  final bool readOnly;
  final int? minLines;
  final int? maxLines;
  final bool autofocus;
  final TextInputAction? inputAction;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final String? initialValue;
  final bool withErrorBorder;
  final bool withShadow;

  @override
  Widget build(BuildContext context) {
    InputBorder ordinaryBorder = OutlineInputBorder(
      borderRadius: (borderRadius ?? 8.r).br,
      gapPadding: 0,
      borderSide:
          isShowBorderLine
              ? BorderSide(
                color: borderColor ?? ColorsManager.shadowColor,
                width: 1.r,
              )
              : BorderSide.none,
    );
    InputBorder errorBorder = OutlineInputBorder(
      borderRadius: (borderRadius ?? 10.r).br,
      gapPadding: 0,
      borderSide: BorderSide(color: ColorsManager.errorColor, width: 1.r),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (labelText != null) ...[
          Text(labelText!, style: labelStyle ?? TextStyles.s14_medium),
          12.verticalSpace,
        ],
        Container(
          decoration:
              withShadow
                  ? BoxDecoration(
                    color: ColorsManager.shadowColor,
                    borderRadius: BorderRadius.circular(10),
                  )
                  : null,
          child: TextFormField(
            focusNode: focusNode,
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
            controller: controller,
            onChanged: onChanged,
            onSaved: onSaved,
            autofocus: autofocus,
            textInputAction: inputAction,
            onTap: onTap,
            readOnly: readOnly,
            onFieldSubmitted: onSubmitted,
            obscureText: isPassword,
            maxLines: maxLines,
            minLines: minLines,
            maxLength: maxLength,
            initialValue: initialValue,
            //* Validation
            inputFormatters: inputFormatters,
            validator:
                validator ??
                (value) {
                  if (isDisableValidation) {
                    return null;
                  } else if ((value == null || value.isEmpty)) {
                    return validationText ?? "Required Field";
                  }
                  return null;
                },

            style: inputStyle ?? TextStyles.s14_medium,
            textAlign: textAlign ?? TextAlign.start,
            keyboardType: keyboardType,
            enabled: isEnable,
            decoration: InputDecoration(
              isDense: isDense,
              filled: true,
              fillColor: fillColor ?? ColorsManager.shadowColor,
              hintText: hintText,
              hintStyle:
                  hintStyle ??
                  Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: ColorsManager.hintColor,
                    fontSize: 14.sp,
                  ),
              errorStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Colors.red,
                fontWeight: FontWeight.w500,
                fontSize: 10.sp,
              ),
              //*  Content Padding , suffix and prefix icons
              contentPadding:
                  contentPadding ??
                  EdgeInsets.symmetric(vertical: 13.5.h, horizontal: 16.w),
              prefixIcon:
                  prefixIcon == null
                      ? null
                      : Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [prefixIcon!],
                      ),
              prefixIconConstraints: const BoxConstraints(minWidth: 0),
              suffixIcon:
                  suffixIcon == null
                      ? null
                      : Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [suffixIcon!],
                      ),
              suffixIconConstraints: const BoxConstraints(minWidth: 0),
              //* Border
              border: InputBorder.none,
              enabledBorder: ordinaryBorder,
              disabledBorder: ordinaryBorder,
              focusedBorder:
                  focusedBorderColor == null
                      ? ordinaryBorder
                      : ordinaryBorder.copyWith(
                        borderSide: BorderSide(
                          color: focusedBorderColor!,
                          width: 1.r,
                        ),
                      ),
              errorBorder: withErrorBorder ? errorBorder : InputBorder.none,
              focusedErrorBorder:
                  withErrorBorder ? errorBorder : InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
