import 'package:flutter/material.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';
import 'package:templete/Data/Functions/app_size.dart';
import 'package:templete/Data/Functions/web_responsive.dart';
import 'package:templete/Presintaions/Home/Sections/header.dart';
import 'package:templete/Presintaions/Home/Sections/section_stores_table.dart';
import 'package:templete/Presintaions/Home/Sections/section_top_boxs.dart';
import 'package:templete/Presintaions/Home/Sections/section_users_table.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState>? scaffoldKey;
  const HomeScreen({
    super.key,
    this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding:
            const EdgeInsets.only(top: 25, bottom: 15, right: 20, left: 20),
        color: AppColors.backgroundColor,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // * Header
              CustomHeader(
                title: 'Main Dashboard',
                subTitle: 'Pages / Dashboard',
                scaffoldKey: scaffoldKey,
              ),
              SizedBox(height: AppSize(context).height * 0.02),
              // * Top Boxes
              WebResponsive.isDesktop(context)
                  ? const SectionTopBoxs()
                  : const Center(child: SectionTopBoxs()),
              SizedBox(height: AppSize(context).height * 0.02),
              // * Brack
              Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Container(
                  width: AppSize(context).width * 0.07,
                  padding: const EdgeInsets.all(30.0),
                  decoration: const BoxDecoration(
                    color: AppColors.whiteColor1,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                ),
              ),
              SizedBox(height: AppSize(context).height * 0.02),
              // * Users And Stors
              WebResponsive.isDesktop(context)
                  ? Wrap(
                      children: const [
                        SectionUsersTable(),
                        SectionStoresTable(),
                      ],
                    )
                  : Center(
                      child: Wrap(
                        children: const [
                          SectionUsersTable(),
                          SectionStoresTable(),
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
