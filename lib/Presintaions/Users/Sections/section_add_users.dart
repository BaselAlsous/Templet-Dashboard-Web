import 'package:flutter/material.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';
import 'package:templete/Presintaions/Components/custom_button.dart';
import 'package:templete/Presintaions/Components/custom_text_wiith_icon.dart';
import 'package:templete/Presintaions/Components/custom_wrap_text_from_fields.dart';
import 'package:templete/Presintaions/Home/Sections/header.dart';

class AddUsersScreen extends StatefulWidget {
  const AddUsersScreen({super.key, this.scaffoldKey});
  final GlobalKey<ScaffoldState>? scaffoldKey;
  @override
  State<AddUsersScreen> createState() => _AddUsersScreenState();
}

class _AddUsersScreenState extends State<AddUsersScreen> {
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.only(top: 25, bottom: 15, right: 20, left: 20),
      color: AppColors.backgroundColor,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // * Header
            CustomHeader(
              title: 'Add Users',
              subTitle: 'Pages / Add Users',
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
                child: Form(
                  key: _key,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // * Name
                      const CustomTextWithIcon(
                        title: 'Name',
                      ),
                      const CustomWrapTextFromFields(
                        title1: 'First Name',
                        textEditingController1: null,
                        title2: 'Last Name',
                        textEditingController2: null,
                      ),

                      // * Phone Number & Address
                      const CustomTextWithIcon(
                        title: 'Phone Number & Address',
                      ),
                      const CustomWrapTextFromFields(
                        title1: 'Phone Number',
                        textEditingController1: null,
                        title2: 'Address',
                        textEditingController2: null,
                      ),

                      // * Password
                      const CustomTextWithIcon(
                        title: 'Password',
                      ),
                      const CustomWrapTextFromFields(
                        title1: 'Enter User Password',
                        textEditingController1: null,
                        title2: 'Confirm Password',
                        textEditingController2: null,
                      ),

                      const Spacer(),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomButton(
                            title: 'Add User',
                            onTap: () {
                              if (_key.currentState!.validate()) {}
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
