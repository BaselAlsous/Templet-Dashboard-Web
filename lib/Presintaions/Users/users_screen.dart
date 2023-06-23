import 'package:flutter/material.dart';
import 'package:templete/Business/AppProvider/app_provider.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';
import 'package:templete/Data/Functions/app_size.dart';
import 'package:templete/Presintaions/Components/custom_button.dart';
import 'package:templete/Presintaions/Components/custom_divider.dart';
import 'package:templete/Presintaions/Components/custom_screen.dart';
import 'package:templete/Presintaions/Components/custom_text_field.dart';
import 'package:templete/Presintaions/Home/Components/custom_row_user_table.dart';
import 'package:templete/Presintaions/Home/Sections/header.dart';
import 'package:provider/provider.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({
    super.key,
    this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  @override
  Widget build(BuildContext context) {
    AppProvider appProvider = Provider.of<AppProvider>(context, listen: true);
    return CustomScreen(
      scaffoldKey: widget.scaffoldKey,
      title: 'Users',
      subTitle: 'Pages / Users',
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
              'Users',
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
                'Search by user name',
                suffixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(width: 10),
            CustomButton(
                h: 40,
                w: 120,
                title: 'Add User',
                onTap: () {
                  appProvider.openAddUsers();
                }),
          ],
        ),
        SizedBox(height: AppSize(context).height * 0.04),
        const CustomRowUsersTable(
          name: 'NAME',
          phone: 'PHONE',
          address: 'ADDRESS',
          userPage: true,
        ),
        const CustomDivider(
          edgeInsetsGeometry: EdgeInsets.symmetric(vertical: 10),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: 18,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            separatorBuilder: (context, index) =>
                SizedBox(height: AppSize(context).height * 0.025),
            itemBuilder: (context, index) {
              return const CustomRowUsersTable(
                name: 'Basel Abdullah Alsous',
                phone: '+962780996225',
                address: 'Jordan , Amman - Alquisma',
                isData: true,
                userPage: true,
              );
            },
          ),
        ),
      ],
    );
  }
}
