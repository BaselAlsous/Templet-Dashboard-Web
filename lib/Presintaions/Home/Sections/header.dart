import 'package:flutter/material.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';
import 'package:templete/Data/Functions/web_responsive.dart';
import 'package:templete/Presintaions/Components/cach_network_image.dart';

class CustomHeader extends StatelessWidget {
  final String title;
  final String subTitle;
  final GlobalKey<ScaffoldState>? scaffoldKey;

  const CustomHeader({
    super.key,
    this.scaffoldKey,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!WebResponsive.isDesktop(context))
          IconButton(
              onPressed: () {
                scaffoldKey!.currentState!.openDrawer();
              },
              icon: const Icon(Icons.menu)),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subTitle,
              style: TextStyle(
                fontSize: 11,
                fontFamily: '',
                color: AppColors.greyColor2,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 25,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: AppColors.whiteColor1,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 5.0),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.notifications_active_outlined,
                      color: AppColors.greyColor2,
                    ),
                  ),
                ),
                const SizedBox(width: 3),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.info_outline,
                      color: AppColors.greyColor2,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 40,
                  height: 40,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor1,
                    borderRadius: BorderRadius.circular(40000),
                  ),
                  child: const CustomCachNetworkImage(
                    image:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVeXmmgy4UHViI1nvK0X5Mddk3b_Kx9hkEug&usqp=CAU',
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
