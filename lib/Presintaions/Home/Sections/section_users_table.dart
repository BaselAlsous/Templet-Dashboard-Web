import 'package:flutter/material.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';
import 'package:templete/Data/Functions/app_size.dart';
import 'package:templete/Presintaions/Components/custom_divider.dart';
import 'package:templete/Presintaions/Home/Components/custom_row_user_table.dart';

class SectionUsersTable extends StatelessWidget {
  const SectionUsersTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, right: 30),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          height: 550,
          width: 600,
          padding: const EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            color: AppColors.whiteColor1,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                ],
              ),
              SizedBox(height: AppSize(context).height * 0.04),
              const CustomRowUsersTable(
                name: 'NAME',
                phone: 'PHONE',
                address: 'ADDRESS',
              ),
              const CustomDivider(
                edgeInsetsGeometry: EdgeInsets.symmetric(vertical: 10),
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: 9,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) =>
                      SizedBox(height: AppSize(context).height * 0.025),
                  itemBuilder: (context, index) {
                    return const CustomRowUsersTable(
                      name: 'Basel Abdullah Alsous',
                      phone: '+962780996225',
                      address: 'Jordan , Amman - Alquisma',
                      isData: true,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
