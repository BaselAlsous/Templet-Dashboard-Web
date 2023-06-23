import 'package:flutter/material.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  final double? h;
  final double? w;
  final double? t;
  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    this.h,
    this.w,
    this.t,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: AppColors.whiteColor1,
      onTap: onTap,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          width: w ?? 120,
          height: h ?? 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.primaryColor,
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: t == null ? 13 : t,
                color: AppColors.whiteColor1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
