import 'package:appointment_app/core/theming/colors.dart';
import 'package:appointment_app/core/theming/styels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextformField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final InputBorder? foucsedBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final Color? backgroundColor;
  final Widget? sufficIcon;
  final bool? isObscureText;
  final TextEditingController? controller;
  final Function(String?) validator;
  const AppTextformField({
    super.key,
    this.contentPadding,
    this.enabledBorder,
    this.foucsedBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.sufficIcon,
    this.isObscureText,
    required this.hintText,
    this.backgroundColor,
    this.controller,
    required this.validator,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        fillColor: backgroundColor ?? ColorsManager.secondaryFormColor,
        filled: true,
        isDense: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorsManager.lighterGrey,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
        focusedBorder:
            foucsedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1.3),
              borderRadius: BorderRadius.circular(16),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.3),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.3),
          borderRadius: BorderRadius.circular(16),
        ),

        hintStyle: hintStyle ?? TextStyles.font14LightGreyMedium,
        hintText: hintText,
        suffixIcon: sufficIcon ?? sufficIcon,
      ),
      validator: (value) {
        return validator(value);
      },
      obscureText: isObscureText ?? false,
      style: TextStyles.font14DarkBlueMedium,
    );
  }
}
