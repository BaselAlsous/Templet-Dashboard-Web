import 'package:flutter/material.dart';
import 'package:templete/Data/Constant/icon/app_icons.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';
import 'package:templete/Data/Functions/app_size.dart';
import 'package:templete/Presintaions/Components/custom_screen.dart';
import 'package:templete/Presintaions/Components/custom_text_field.dart';
import 'package:templete/Presintaions/Home/Components/custom_box.dart';
import 'package:templete/Presintaions/Orders/Components/custom_row_orders_table.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key, this.scaffoldKey});
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      scaffoldKey: widget.scaffoldKey,
      title: 'Orders',
      subTitle: 'Pages / Orders',
      isUsers: true,
      children: [
        Row(
          children: [
            SizedBox(
              width: 30,
              height: 30,
              child: AppIcons.order,
            ),
            const SizedBox(width: 11),
            Text(
              'Orders',
              style: TextStyle(
                fontSize: 25,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            const SizedBox(
              width: 200,
              child: CustomTextField(
                'Search by user name',
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ],
        ),
        SizedBox(height: AppSize(context).height * 0.04),
        const CustomRowOrdersTable(
          id: 'ID',
          name: 'NAME',
          payment: 'PAYMENT',
          status: 'STAUTS',
          total: 'TOTAL',
        ),
        const SizedBox(height: 30),
        Expanded(
          child: ListView.separated(
            itemCount: 100,
            separatorBuilder: (context, index) => const SizedBox(height: 18),
            itemBuilder: (context, index) {
              return CustomRowOrdersTable(
                id: (index + 1).toString(),
                name: 'Basel Abdullah Alsous',
                payment: 'Cash',
                status: 'Pendding',
                total: '100.0 JD',
                isData: true,
              );
            },
          ),
        ),
      ],
    );
  }
}
