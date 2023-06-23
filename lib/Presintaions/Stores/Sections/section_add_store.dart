import 'package:flutter/material.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';
import 'package:templete/Presintaions/Components/custom_button.dart';
import 'package:templete/Presintaions/Components/custom_text_field.dart';
import 'package:templete/Presintaions/Components/custom_text_wiith_icon.dart';
import 'package:templete/Presintaions/Components/custom_wrap_text_from_fields.dart';
import 'package:templete/Presintaions/Home/Sections/header.dart';

class AddStoresScreen extends StatefulWidget {
  const AddStoresScreen({super.key, this.scaffoldKey});
  final GlobalKey<ScaffoldState>? scaffoldKey;
  @override
  State<AddStoresScreen> createState() => _AddStoresScreenState();
}

class _AddStoresScreenState extends State<AddStoresScreen> {
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.only(top: 25, bottom: 15, right: 20, left: 20),
      color: AppColors.backgroundColor,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: _key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // * Header
              CustomHeader(
                title: 'Add Stores',
                subTitle: 'Pages / Add Stores',
                scaffoldKey: widget.scaffoldKey,
              ),
              const SizedBox(height: 30),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  height: 730,
                  width: double.infinity,
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // * First Card
                          Expanded(
                            flex: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                // * Name & Address
                                CustomTextWithIcon(
                                  title: 'Name & Address',
                                ),
                                CustomWrapTextFromFields(
                                  title1: 'Store Name',
                                  textEditingController1: null,
                                  title2: 'Address',
                                  textEditingController2: null,
                                ),
                                // * Country & City
                                CustomTextWithIcon(
                                  title: 'Country & City',
                                ),
                                CustomWrapTextFromFields(
                                  title1: 'Country',
                                  textEditingController1: null,
                                  title2: 'City',
                                  textEditingController2: null,
                                ),
                                // * Email & Phone Number
                                CustomTextWithIcon(
                                  title: 'Email & Phone Number',
                                ),
                                CustomWrapTextFromFields(
                                  title1: 'Email',
                                  textEditingController1: null,
                                  title2: 'Phone Number',
                                  textEditingController2: null,
                                ),
                                // * Password
                                CustomTextWithIcon(
                                  title: 'Password',
                                ),
                                CustomWrapTextFromFields(
                                  title1: 'Enter User Password',
                                  textEditingController1: null,
                                  title2: 'Confirm Password',
                                  textEditingController2: null,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 15),
                          // * Sucand Card
                          Expanded(
                            flex: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                // * Category & Certifcate
                                CustomTextWithIcon(
                                  title: 'Category & Certifcate',
                                ),
                                CustomWrapTextFromFields(
                                  title1: 'Category',
                                  textEditingController1: null,
                                  title2: 'Select Certifcate',
                                  textEditingController2: null,
                                ),
                                // * Country & City
                                CustomTextWithIcon(
                                  title: 'Description',
                                ),
                                Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: SizedBox(
                                    width: 580,
                                    height: 180,
                                    child: CustomTextField(
                                      'Enter Store Descriptions',
                                      maxLines: 10,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomButton(
                            title: 'Add Store',
                            onTap: () {
                              if (_key.currentState!.validate()) {}
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
// name,
//         address,
//         lat,
//         lang,
//         category_id,
//         email,
//         city,
//         country,
//         phone,
//         cirtefecat,
//         description,
//         fcm_token,
//         password
