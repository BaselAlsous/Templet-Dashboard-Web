import 'package:flutter/material.dart';
import 'package:templete/Presintaions/Home/Components/custom_box.dart';

class SectionTopBoxs extends StatelessWidget {
  const SectionTopBoxs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: const [
        CustomBox(
          title: 'Users count',
          count: '1000',
          icon: Icons.group,
        ),
        CustomBox(
          title: 'Stores count',
          count: '500',
          icon: Icons.group,
        ),
        CustomBox(
          title: 'Products count',
          count: '1500',
          icon: Icons.group,
        ),
        CustomBox(
          title: 'Orders count',
          count: '150',
          icon: Icons.group,
        ),
      ],
    );
  }
}
