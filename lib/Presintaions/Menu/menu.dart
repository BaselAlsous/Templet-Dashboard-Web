// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:templete/Business/AppProvider/app_provider.dart';
import 'package:templete/Data/Functions/app_size.dart';
import 'package:templete/Data/Constant/icon/app_icons.dart';
import 'package:templete/Data/Constant/Image/app_image.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';
import 'package:templete/Business/LanguageProvider/l10n_provider.dart';
import 'package:templete/Data/Functions/navigation.dart';
import 'package:templete/Presintaions/Authantication/sign_in_screen.dart';
import 'package:templete/Presintaions/Menu/Components/custom_list_menu.dart';
import 'package:templete/Presintaions/dashboard_screen.dart';

import '../Components/custom_divider.dart';

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppProvider appProvider = Provider.of<AppProvider>(context, listen: true);
    LanguageProvider languageProvider = Provider.of<LanguageProvider>(context);
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            // * Logo
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  child: Image(
                    image: AppImage.logo,
                    fit: BoxFit.fill,
                  ),
                ),
                const CustomDivider(
                  edgeInsetsGeometry: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 8,
                  ),
                )
              ],
            ),
            // * Home Section
            CustomListMenu(
              title: 'Home',
              icon: AppIcons.home,
              isSelected: true,
              onTap: () => appProvider.openHomeScreen(),
            ),
            // * Banners Section
            CustomListMenu(
              title: 'Banners',
              icon: AppIcons.bannars,
              isSelected: true,
              onTap: () => appProvider.openBannarsScreen(),
            ),
            // * Users Section
            CustomListMenu(
              title: 'Users',
              icon: AppIcons.users,
              isSelected: true,
              onTap: () => appProvider.openUsersScreen(),
            ),
            // * Stores Section
            CustomListMenu(
              title: 'Stores',
              icon: AppIcons.stores,
              isSelected: true,
              onTap: () => appProvider.openStoresScreen(),
            ),
            // * Orders Section
            CustomListMenu(
              title: 'Orders',
              icon: AppIcons.order,
              isSelected: true,
              onTap: () => appProvider.openOrdersScreen(),
            ),
            // * Products Section
            CustomListMenu(
              title: 'Products',
              icon: AppIcons.products,
              isSelected: true,
              onTap: () => appProvider.openProductsScreen(),
            ),
            // * About & Conditions Section
            CustomListMenu(
              title: 'About & Conditions',
              icon: AppIcons.aboutConditons,
              isSelected: true,
              onTap: () => appProvider.openAboutConditionsScreen(),
            ),
            // * Setting Section
            CustomListMenu(
              title: 'Setting',
              icon: AppIcons.setting,
              isSelected: true,
              onTap: () => appProvider.openSettingScreen(),
            ),
            // * Logout
            CustomListMenu(
              title: 'Logout',
              icon: AppIcons.logout,
              isSelected: true,
              onTap: () {
                Navigator.pushAndRemoveUntil(context,
                    rightToLeft(const SignScreenScreen()), (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
