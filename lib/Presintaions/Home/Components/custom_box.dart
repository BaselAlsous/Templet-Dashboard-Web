import 'package:flutter/material.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';
import 'package:templete/Data/Functions/app_size.dart';
import 'package:templete/Presintaions/Components/custom_text.dart';

class CustomBox extends StatelessWidget {
  final IconData icon;
  final String title;
  final String count;
  const CustomBox({
    super.key,
    required this.icon,
    required this.title,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          width: 250,
          height: 120,
          padding: const EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            color: AppColors.whiteColor1,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(10000),
                ),
                child: Icon(
                  icon,
                  size: 35,
                  color: AppColors.primaryColor,
                ),
              ),
              const SizedBox(width: 26.0),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text: title,
                    // size: 14,
                    color: AppColors.lightGreyColor,
                  ),
                  const SizedBox(height: 3.0),
                  Text(
                    count,
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: '',
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
