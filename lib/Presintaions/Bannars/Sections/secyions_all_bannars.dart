import 'package:flutter/material.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';
import 'package:templete/Presintaions/Components/cach_network_image.dart';

class SectionAllBannars extends StatelessWidget {
  const SectionAllBannars({
    super.key,
    required this.allBannars,
  });

  final List<String> allBannars;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            children: allBannars
                .map((e) => Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 180,
                          height: 180,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          child: CustomCachNetworkImage(image: e),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                              padding: const EdgeInsets.all(8),
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(100000),
                              ),
                              child: const Icon(
                                Icons.close,
                                size: 15,
                                color: AppColors.whiteColor1,
                              )),
                        )
                      ],
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
