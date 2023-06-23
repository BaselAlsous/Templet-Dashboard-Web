import 'package:flutter/material.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';
import 'package:templete/Data/Functions/web_responsive.dart';
import 'package:templete/Presintaions/Bannars/Sections/section_add_bannars.dart';
import 'package:templete/Presintaions/Bannars/Sections/secyions_all_bannars.dart';
import 'package:templete/Presintaions/Components/custom_screen.dart';
import 'package:templete/Presintaions/Home/Sections/header.dart';

class BannarsScreen extends StatefulWidget {
  const BannarsScreen({
    super.key,
    this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  State<BannarsScreen> createState() => _BannarsScreenState();
}

class _BannarsScreenState extends State<BannarsScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  List<String> allBannars = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVeXmmgy4UHViI1nvK0X5Mddk3b_Kx9hkEug&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVeXmmgy4UHViI1nvK0X5Mddk3b_Kx9hkEug&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVeXmmgy4UHViI1nvK0X5Mddk3b_Kx9hkEug&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVeXmmgy4UHViI1nvK0X5Mddk3b_Kx9hkEug&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVeXmmgy4UHViI1nvK0X5Mddk3b_Kx9hkEug&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVeXmmgy4UHViI1nvK0X5Mddk3b_Kx9hkEug&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVeXmmgy4UHViI1nvK0X5Mddk3b_Kx9hkEug&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVeXmmgy4UHViI1nvK0X5Mddk3b_Kx9hkEug&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVeXmmgy4UHViI1nvK0X5Mddk3b_Kx9hkEug&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVeXmmgy4UHViI1nvK0X5Mddk3b_Kx9hkEug&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVeXmmgy4UHViI1nvK0X5Mddk3b_Kx9hkEug&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVeXmmgy4UHViI1nvK0X5Mddk3b_Kx9hkEug&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVeXmmgy4UHViI1nvK0X5Mddk3b_Kx9hkEug&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVeXmmgy4UHViI1nvK0X5Mddk3b_Kx9hkEug&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVeXmmgy4UHViI1nvK0X5Mddk3b_Kx9hkEug&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVeXmmgy4UHViI1nvK0X5Mddk3b_Kx9hkEug&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVeXmmgy4UHViI1nvK0X5Mddk3b_Kx9hkEug&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVeXmmgy4UHViI1nvK0X5Mddk3b_Kx9hkEug&usqp=CAU',
  ];

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      title: 'Bannars',
      subTitle: 'Pages / Bannars',
      children: [
        TabBar(
          isScrollable: true,
          indicatorColor: AppColors.primaryColor,
          controller: tabController,
          labelStyle: TextStyle(
              fontWeight: FontWeight.bold, color: AppColors.primaryColor),
          tabs: const [
            Tab(text: 'All Bannars'),
            Tab(text: 'Add Bannars'),
          ],
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: 570,
          child: TabBarView(
            controller: tabController,
            children: [
              SectionAllBannars(allBannars: allBannars),
              const SectionAddBannars()
            ],
          ),
        )
      ],
    );
  }
}
