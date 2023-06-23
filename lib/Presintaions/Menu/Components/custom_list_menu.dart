import 'package:flutter/material.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';

class CustomListMenu extends StatelessWidget {
  final String title;
  final Widget icon;
  final Function() onTap;
  final bool isSelected;

  const CustomListMenu({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          hoverColor: AppColors.whiteColor1,
          onTap: onTap,
          leading: SizedBox(
            width: 20,
            height: 20,
            child: icon,
          ),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: AppColors.primaryColor,
            ),
          ),
          trailing: !isSelected
              ? const SizedBox()
              : Container(
                  height: 20,
                  width: 3,
                  color: AppColors.primaryColor,
                ),
        ),
      ],
    );
  }
}
