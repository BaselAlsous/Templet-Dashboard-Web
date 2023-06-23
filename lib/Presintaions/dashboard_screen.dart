// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:templete/Business/AppProvider/app_provider.dart';
import 'package:templete/Presintaions/AboutUs&Conditions/about_conditions_screen.dart';
import 'package:templete/Presintaions/Bannars/bannars_screen.dart';
import 'package:templete/Presintaions/Home/home_screen.dart';
import 'package:templete/Presintaions/Menu/menu.dart';
import 'package:templete/Data/Functions/web_responsive.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';
import 'package:templete/Presintaions/Orders/order_screen.dart';
import 'package:templete/Presintaions/Products/products_screen.dart';
import 'package:templete/Presintaions/Setting/setting_screen.dart';
import 'package:templete/Presintaions/Stores/Sections/section_add_store.dart';
import 'package:templete/Presintaions/Stores/stores_screen.dart';
import 'package:templete/Presintaions/Users/Sections/section_add_users.dart';
import 'package:templete/Presintaions/Users/users_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    AppProvider appProvider = Provider.of(context, listen: true);
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomMenu(),
      body: WebResponsive(
        // * Mobaile
        mobile: SizedBox(
          child: Row(
            children: [
              Expanded(child: Container(color: AppColors.yellowColor)),
            ],
          ),
        ),
        // * Tablet
        tablet: SizedBox(
          child: Row(
            children: [
              // * Home Screen
              appProvider.indexPage == 0
                  ? HomeScreen(scaffoldKey: scaffoldKey)
                  : appProvider.indexPage == 1
                      ? BannarsScreen(scaffoldKey: scaffoldKey)
                      : appProvider.indexPage == 2
                          ? UsersScreen(scaffoldKey: scaffoldKey)
                          : StoresScreen(scaffoldKey: scaffoldKey),
            ],
          ),
        ),
        // * Disktop
        desktop: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // * Menu Section
              const CustomMenu(),
              // * Home Screen
              appProvider.indexPage == 0
                  ? const HomeScreen()
                  : appProvider.indexPage == 1
                      ? const BannarsScreen()
                      : appProvider.indexPage == 2
                          ? const UsersScreen()
                          : appProvider.indexPage == 3
                              ? const StoresScreen()
                              : appProvider.indexPage == 4
                                  ? const OrdersScreen()
                                  : appProvider.indexPage == 5
                                      ? const ProductsScreen()
                                      : appProvider.indexPage == 6
                                          ? const AboutAndConditions()
                                          : appProvider.indexPage == 8
                                              ? const SettingScreen()
                                              : appProvider.indexPage == 11
                                                  ? const AddUsersScreen()
                                                  : appProvider.indexPage == 12
                                                      ? const AddStoresScreen()
                                                      : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
