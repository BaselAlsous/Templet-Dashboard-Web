import 'package:flutter/material.dart';
import 'package:templete/Presintaions/Components/custom_text_field.dart';

class CustomWrapTextFromFields extends StatelessWidget {
  final String title1;
  final TextEditingController? textEditingController1;
  final String title2;
  final TextEditingController? textEditingController2;

  const CustomWrapTextFromFields({
    super.key,
    required this.title1,
    this.textEditingController1,
    required this.title2,
    this.textEditingController2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Wrap(
        children: [
          SizedBox(
            width: 280,
            height: 80,
            child: CustomTextField(
              title1,
              controller: textEditingController1,
            ),
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: 280,
            height: 80,
            child: CustomTextField(
              title2,
              controller: textEditingController2,
            ),
          ),
        ],
      ),
    );
  }
}
