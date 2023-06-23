// ignore_for_file: depend_on_referenced_packages

import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';
import 'package:templete/Presintaions/Components/cach_network_image.dart';
import 'package:image_picker/image_picker.dart';
import 'package:templete/Presintaions/Components/custom_button.dart';
import 'package:templete/Presintaions/Components/custom_text_field.dart';
import 'package:templete/Presintaions/Components/custom_text_wiith_icon.dart';

class SectionAddBannars extends StatefulWidget {
  const SectionAddBannars({
    super.key,
  });

  @override
  State<SectionAddBannars> createState() => _SectionAddBannarsState();
}

class _SectionAddBannarsState extends State<SectionAddBannars> {
  final key = GlobalKey<FormState>();
  bool isSelectedImage = false;
  File? imageFile;
  TextEditingController url = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTextWithIcon(
            title: 'Select Image From Disktop Folders',
          ),

          const SizedBox(height: 20),
          // * Image
          Stack(
            alignment: Alignment.topRight,
            children: [
              InkWell(
                onTap: () async {
                  await pickImage();
                },
                child: Container(
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
          const SizedBox(height: 20),
          SizedBox(
            width: 250,
            height: 45,
            child: CustomTextField(
              'Enter URL',
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
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomButton(
                title: 'SUBMOIT',
                onTap: () {
                  if (key.currentState!.validate()) {}
                },
              )
            ],
          )
        ],
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
