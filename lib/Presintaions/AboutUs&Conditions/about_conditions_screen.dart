import 'package:flutter/material.dart';
import 'package:templete/Presintaions/Components/custom_screen.dart';
import 'package:templete/Presintaions/AboutUs&Conditions/Components/custom_about_and_conditions.dart';

class AboutAndConditions extends StatefulWidget {
  const AboutAndConditions({super.key, this.scaffoldKey});
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  State<AboutAndConditions> createState() => _AboutAndConditionsState();
}

class _AboutAndConditionsState extends State<AboutAndConditions> {
  TextEditingController aboutUs = TextEditingController();
  TextEditingController termsAndConditions = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      scaffoldKey: widget.scaffoldKey,
      title: 'About & Conditions',
      subTitle: 'Pages / About & Conditions',
      children: [
        Wrap(
          children: [
            CustomAboutAndConditions(
              title: 'About Us',
              hint: 'Enter About Us',
              textEditingController: aboutUs,
              onSubmit: () {},
            ),
            const SizedBox(width: 30),
            CustomAboutAndConditions(
              title: 'Terms And Conditions',
              hint: 'Enter Terms And Conditions',
              textEditingController: aboutUs,
              onSubmit: () {},
            ),
          ],
        ),
      ],
    );
  }
}
