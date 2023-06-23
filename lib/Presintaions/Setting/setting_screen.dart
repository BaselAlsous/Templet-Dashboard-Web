import 'package:flutter/material.dart';
import 'package:templete/Presintaions/Components/custom_button.dart';
import 'package:templete/Presintaions/Components/custom_screen.dart';
import 'package:templete/Presintaions/Components/custom_text_field.dart';
import 'package:templete/Presintaions/Components/custom_text_wiith_icon.dart';
import 'package:templete/Presintaions/Components/custom_wrap_text_from_fields.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key, this.scaffoldKey});
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      scaffoldKey: widget.scaffoldKey,
      title: 'Setting',
      subTitle: 'Pages / Setting',
      isUsers: true,
      children: [
        const CustomTextWithIcon(
          title: 'Email & Phone',
        ),
        const CustomWrapTextFromFields(
          title1: 'Email',
          textEditingController1: null,
          title2: 'Phone',
          textEditingController2: null,
        ),
        const CustomTextWithIcon(
          title: 'Address & Shipping',
        ),
        const CustomWrapTextFromFields(
          title1: 'Address',
          textEditingController1: null,
          title2: 'Shipping',
          textEditingController2: null,
        ),
        const CustomTextWithIcon(
          title: 'Short Description',
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          width: 600,
          child: const CustomTextField(
            'Enter Short Descriptions .....',
            maxLines: 6,
          ),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomButton(
              title: 'Add Store',
              onTap: () {},
            )
          ],
        )
      ],
    );
  }
}
// email, phone, lat, lang, address, short_description, shipping