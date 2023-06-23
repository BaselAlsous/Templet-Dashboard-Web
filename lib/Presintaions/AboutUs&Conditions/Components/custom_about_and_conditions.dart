
import 'package:flutter/material.dart';
import 'package:templete/Presintaions/Components/custom_button.dart';
import 'package:templete/Presintaions/Components/custom_text_field.dart';
import 'package:templete/Presintaions/Components/custom_text_wiith_icon.dart';

class CustomAboutAndConditions extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController textEditingController;
  final Function() onSubmit;
  const CustomAboutAndConditions({
    super.key,
    required this.title,
    required this.textEditingController,
    required this.onSubmit,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      height: 650,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextWithIcon(
            title: title,
          ),
          const SizedBox(height: 15),
          CustomTextField(
            hint,
            controller: textEditingController,
            maxLines: 27,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomButton(title: 'Submit', onTap: onSubmit),
            ],
          ),
        ],
      ),
    );
  }
}
