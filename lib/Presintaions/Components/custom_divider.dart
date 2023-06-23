import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final EdgeInsetsGeometry edgeInsetsGeometry;
  const CustomDivider({
    super.key,
    required this.edgeInsetsGeometry ,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: edgeInsetsGeometry,
      child:const Divider(),
    );
  }
}
