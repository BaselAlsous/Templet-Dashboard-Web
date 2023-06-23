import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:templete/Data/Constant/icon/app_icons.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';
import 'package:templete/Presintaions/Components/cach_network_image.dart';
import 'package:image_picker/image_picker.dart';
import 'package:templete/Presintaions/Components/custom_button.dart';
import 'package:templete/Presintaions/Components/custom_text_field.dart';
import 'package:templete/Presintaions/Components/custom_text_wiith_icon.dart';
import 'package:templete/Presintaions/Components/custom_wrap_text_from_fields.dart';

class SectionAddProducts extends StatefulWidget {
  const SectionAddProducts({
    super.key,
  });

  @override
  State<SectionAddProducts> createState() => _SectionAddProductsState();
}

class _SectionAddProductsState extends State<SectionAddProducts> {
  final key = GlobalKey<FormState>();
  bool isSelectedImage = false;
  File? imageFile;
  TextEditingController url = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Form(
        key: key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 20,
                  height: 20,
                  child: AppIcons.dimon,
                ),
                const SizedBox(width: 10),
                Text(
                  'Select Image From Disktop Folders',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () async {
                    pickImage();
                  },
                  icon: const Icon(
                    Icons.file_upload,
                  ),
                ),
                const Spacer(),
                CustomButton(
                  title: 'SUBMOIT',
                  onTap: () {
                    if (key.currentState!.validate()) {}
                  },
                )
              ],
            ),
            const SizedBox(height: 20),
            // * Image
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 200,
                  height: 200,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: const CustomCachNetworkImage(
                    image:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbNZBAGZbp_wJfABdPBpUCK490jp1Ba-rNmYK8-X5vuxP3VbS88qwDkr7Em-fXyx4l_qU&usqp=CAU',
                  ),
                ),
                if (isSelectedImage)
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppColors.redColor,
                        borderRadius: BorderRadius.circular(100000),
                      ),
                      child: const Icon(
                        Icons.close,
                        color: AppColors.whiteColor1,
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        CustomTextWithIcon(
                          title: 'Name',
                        ),
                        CustomWrapTextFromFields(
                          title1: 'Name Arabic',
                          textEditingController1: null,
                          title2: 'Name English',
                          textEditingController2: null,
                        ),
                        CustomTextWithIcon(
                          title: 'Descriptions',
                        ),
                        CustomWrapTextFromFields(
                          title1: 'Descriptions Arabic',
                          textEditingController1: null,
                          title2: 'Descriptions English',
                          textEditingController2: null,
                        ),
                      ],
                    )),
                Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomTextWithIcon(
                          title: 'Price',
                        ),
                        const CustomWrapTextFromFields(
                          title1: 'Price',
                          textEditingController1: null,
                          title2: 'Offer Price',
                          textEditingController2: null,
                        ),
                        const CustomTextWithIcon(
                          title: 'Store',
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SizedBox(
                            width: 280,
                            height: 80,
                            child: CustomTextField(
                              'Select Store',
                              controller: url,
                              validator: (value) {
                                if (value == null) {
                                  return 'Required';
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      log(imageTemp.path);
      setState(() {
        imageFile = imageTemp;
      });
    } on PlatformException catch (e) {
      log('Failed to pick image: $e');
    }
  }
}
//  nameEn,
//       nameAr,
//       descriptionEn,
//       descriptionAr,
//       price,
//       New_price,
//       storeId,