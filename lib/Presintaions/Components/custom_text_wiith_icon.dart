import 'package:flutter/material.dart';
import 'package:templete/Data/Constant/icon/app_icons.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';

class CustomTextWithIcon extends StatelessWidget {
  final String title;

  const CustomTextWithIcon({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 20,
          height: 20,
          child: AppIcons.dimon,
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            color: AppColors.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
