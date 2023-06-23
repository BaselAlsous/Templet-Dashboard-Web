import 'package:flutter/material.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';
import 'package:templete/Presintaions/Components/cach_network_image.dart';

class CustomRowStoresTable extends StatelessWidget {
  final String name;
  final String status;
  final String phone;
  final String address;
  final bool? isData;
  final bool? storePage;

  const CustomRowStoresTable({
    super.key,
    required this.name,
    required this.phone,
    required this.address,
    this.isData = false,
    required this.status,
    this.storePage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        isData == false
            ? const SizedBox(width: 50)
            : Container(
                width: 50,
                height: 50,
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
        const SizedBox(width: 20),
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
            status,
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
        storePage == true
            ? isData == true
                ? Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {},
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
            : const SizedBox(),
      ],
    );
  }
}
