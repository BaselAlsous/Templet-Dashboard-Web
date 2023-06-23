import 'package:flutter/material.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';
import 'package:templete/Presintaions/Components/cach_network_image.dart';
import 'package:templete/Presintaions/Components/custom_screen.dart';

class AllProductsStore extends StatefulWidget {
  final List<String> allProducts;
  const AllProductsStore({super.key, required this.allProducts});

  @override
  State<AllProductsStore> createState() => _AllProductsStoreState();
}

class _AllProductsStoreState extends State<AllProductsStore> {
  @override
  Widget build(BuildContext context) {
    return CustomScreen(
        title: 'Store Products',
        subTitle: 'Pages / Store Products',
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  children: widget.allProducts
                      .map((e) => Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Card(
                                elevation: 6,
                                child: Container(
                                  margin: const EdgeInsets.all(10),
                                  width: 180,
                                  child: Column(
                                    children: [
                                      Container(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        width: 180,
                                        height: 180,
                                        child: CustomCachNetworkImage(image: e),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              width: 100,
                                              child: Text(
                                                'data',
                                                style: TextStyle(
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.blackColor1,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '300 JD',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.primaryColor,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          padding: const EdgeInsets.all(6),
                                          color: AppColors.primaryColor,
                                          child: const Center(
                                            child: Text(
                                              'Update',
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: AppColors.whiteColor1,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                    padding: const EdgeInsets.all(8),
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius:
                                          BorderRadius.circular(100000),
                                    ),
                                    child: const Icon(
                                      Icons.close,
                                      size: 14,
                                      color: AppColors.whiteColor1,
                                    )),
                              )
                            ],
                          ))
                      .toList(),
                ),
              ],
            ),
          )
        ]);
  }
}
