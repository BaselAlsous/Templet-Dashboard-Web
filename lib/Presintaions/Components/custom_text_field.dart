import 'package:flutter/material.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final bool obscureText;
  final Widget? prefixIcon;
  final String? Function(dynamic)? validator;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final FocusNode? focusNode;
  final Color? fillColor;
  final int? maxLength;
  final int maxLines;
  final bool? readOnly;
  final EdgeInsetsGeometry? padding;
  final bool? haveBorder;

  const CustomTextField(
    this.hintText, {
    this.onChanged,
    this.readOnly,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.controller,
    this.validator,
    this.focusNode,
    this.maxLines = 1,
    this.maxLength,
    Key? key,
    this.fillColor,
    this.haveBorder,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      maxLength: maxLength,
      onChanged: onChanged,
      keyboardType: keyboardType,
      controller: controller,
      obscureText: obscureText,
      readOnly: readOnly ?? false,
      validator: validator,
      focusNode: focusNode,
      style: const TextStyle(fontSize: 13),
      decoration: InputDecoration(
        counter: const SizedBox(),
        hintStyle: TextStyle(color: AppColors.greyColor2, fontSize: 13),
        contentPadding: padding ?? const EdgeInsets.all(10.0),
        fillColor: fillColor ?? AppColors.whiteColor1,
        filled: true,
        prefixIcon: prefixIcon,
        hintText: hintText,
        suffixIcon: suffixIcon,
        hoverColor: AppColors.whiteColor1,
        border: OutlineInputBorder(
            gapPadding: 0,
            borderSide: const BorderSide(color: AppColors.greyColor1),
            borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
            gapPadding: 0,
            borderSide: BorderSide(
                color: haveBorder == null
                    ? AppColors.greyColor1
                    : AppColors.whiteColor1),
            borderRadius: BorderRadius.circular(10)),
        disabledBorder: OutlineInputBorder(
            gapPadding: 0,
            borderSide: BorderSide(
                color: haveBorder == null
                    ? AppColors.greyColor1
                    : AppColors.whiteColor1),
            borderRadius: BorderRadius.circular(10)),
        enabledBorder: OutlineInputBorder(
            gapPadding: 0,
            borderSide: BorderSide(
                color: haveBorder == null
                    ? AppColors.greyColor1
                    : AppColors.whiteColor1),
            borderRadius: BorderRadius.circular(10)),
        errorBorder: OutlineInputBorder(
          gapPadding: 0,
          borderSide: const BorderSide(color: AppColors.redColor),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
