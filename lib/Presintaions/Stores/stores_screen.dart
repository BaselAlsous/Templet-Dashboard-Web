import 'package:flutter/material.dart';
import 'package:templete/Business/AppProvider/app_provider.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';
import 'package:templete/Data/Functions/app_size.dart';
import 'package:templete/Presintaions/Components/custom_button.dart';
import 'package:templete/Presintaions/Components/custom_divider.dart';
import 'package:templete/Presintaions/Components/custom_screen.dart';
import 'package:templete/Presintaions/Components/custom_text_field.dart';
import 'package:templete/Presintaions/Home/Components/custom_row_stores_table.dart';
import 'package:templete/Presintaions/Home/Sections/header.dart';
import 'package:provider/provider.dart';

class StoresScreen extends StatefulWidget {
  const StoresScreen({
    super.key,
    this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  State<StoresScreen> createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen> {
  @override
  Widget build(BuildContext context) {
    AppProvider appProvider = Provider.of<AppProvider>(context, listen: true);

    return CustomScreen(
      scaffoldKey: widget.scaffoldKey,
      title: 'Stores',
      subTitle: 'Pages / Stores',
      isUsers: true,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.group,
              size: 30,
              color: AppColors.primaryColor,
            ),
            const SizedBox(width: 11),
            Text(
              'Stores',
              style: TextStyle(
                fontSize: 25,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            const SizedBox(
              width: 200,
              child: CustomTextField(
                'Search by stores name',
                suffixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(width: 10),
            CustomButton(
              h: 40,
              w: 120,
              title: 'Add Stores',
              onTap: () {
                appProvider.openAddStores();
              },
            ),
          ],
        ),
        SizedBox(height: AppSize(context).height * 0.04),
        const CustomRowStoresTable(
          name: 'NAME',
          status: 'STATUS',
          phone: 'PHONE',
          address: 'ADDRESS',
          storePage: true,
        ),
        const CustomDivider(
          edgeInsetsGeometry: EdgeInsets.symmetric(vertical: 10),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: 5,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) =>
                SizedBox(height: AppSize(context).height * 0.025),
            itemBuilder: (context, index) {
              return const CustomRowStoresTable(
                name: 'NAME',
                status: 'STATUS',
                phone: 'PHONE',
                address: 'ADDRESS',
                isData: true,
                storePage: true,
              );
            },
          ),
        ),
      ],
    );
  }
}
