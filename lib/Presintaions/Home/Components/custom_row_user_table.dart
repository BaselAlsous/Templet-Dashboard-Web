import 'package:flutter/material.dart';
import 'package:templete/Business/AppProvider/app_provider.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';
import 'package:provider/provider.dart';

class CustomRowUsersTable extends StatelessWidget {
  final String name;
  final String phone;
  final String address;
  final bool? isData;
  final bool? userPage;
  const CustomRowUsersTable({
    super.key,
    required this.name,
    required this.phone,
    required this.address,
    this.isData = false,
    this.userPage = false,
  });

  @override
  Widget build(BuildContext context) {
    AppProvider appProvider = Provider.of<AppProvider>(context, listen: true);

    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            name,
            style: TextStyle(
                overflow: TextOverflow.ellipsis,
                wordSpacing: 0.5,
                fontSize: 14,
                color: isData == true
                    ? AppColors.blackColor1
                    : AppColors.greyColor2,
                fontWeight: isData == true ? FontWeight.bold : null),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            phone,
            style: TextStyle(
                overflow: TextOverflow.ellipsis,
                wordSpacing: 0.5,
                fontSize: 14,
                color: isData == true
                    ? AppColors.blackColor1
                    : AppColors.greyColor2,
                fontWeight: isData == true ? FontWeight.bold : null),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            address,
            style: TextStyle(
                overflow: TextOverflow.ellipsis,
                wordSpacing: 0.5,
                fontSize: 14,
                color: isData == true
                    ? AppColors.blackColor1
                    : AppColors.greyColor2,
                fontWeight: isData == true ? FontWeight.bold : null),
          ),
        ),
        const SizedBox(width: 10),
        userPage == true
            ? isData == true
                ? Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              appProvider.openAddUsers();
                            },
                            child: Card(
                              elevation: 5,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 7, vertical: 7),
                                color: AppColors.blueColor,
                                child: const Center(
                                  child: Text(
                                    'Update',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: AppColors.whiteColor1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: Card(
                              elevation: 5,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 7, vertical: 7),
                                color: AppColors.redColor,
                                child: const Center(
                                  child: Text(
                                    'Delete',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: AppColors.whiteColor1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                : const Expanded(
                    flex: 2,
                    child: SizedBox(),
                  )
            : const SizedBox()
      ],
    );
  }
}
