import 'package:flutter/material.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';
import 'package:templete/Presintaions/Home/Sections/header.dart';

class CustomScreen extends StatefulWidget {
  final String title;
  final String subTitle;
  final List<Widget> children;
  final bool? isUsers;
  final GlobalKey<ScaffoldState>? scaffoldKey;

  const CustomScreen(
      {super.key,
      this.scaffoldKey,
      required this.title,
      required this.subTitle,
      required this.children,
      this.isUsers = false});
  @override
  State<CustomScreen> createState() => _CustomScreenState();
}

class _CustomScreenState extends State<CustomScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 8,
        child: Container(
          padding:
              const EdgeInsets.only(top: 25, bottom: 15, right: 20, left: 20),
          color: AppColors.backgroundColor,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomHeader(
                  title: widget.title,
                  subTitle: widget.subTitle,
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
                    child: widget.isUsers == true
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: widget.children,
                          )
                        : SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: widget.children,
                            ),
                          ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
