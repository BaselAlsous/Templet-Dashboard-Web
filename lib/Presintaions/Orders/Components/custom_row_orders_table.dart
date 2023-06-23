import 'package:flutter/material.dart';
import 'package:templete/Business/AppProvider/app_provider.dart';
import 'package:templete/Data/Constant/theme/color_constant.dart';
import 'package:provider/provider.dart';

class CustomRowOrdersTable extends StatefulWidget {
  final String id;
  final String name;
  final String payment;
  final String status;
  final String total;
  final bool? isData;
  const CustomRowOrdersTable({
    super.key,
    required this.id,
    required this.name,
    required this.status,
    required this.total,
    this.isData = false,
    required this.payment,
  });

  @override
  State<CustomRowOrdersTable> createState() => _CustomRowOrdersTableState();
}

class _CustomRowOrdersTableState extends State<CustomRowOrdersTable> {
  final List<bool> _selectedFruits = <bool>[true, false, false];
  List<Widget> fruits = <Widget>[
    const Text('Pendding'),
    const Text('On Going'),
    const Text('Closed')
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            widget.id,
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              wordSpacing: 0.5,
              fontSize: 14,
              color: widget.isData == true
                  ? AppColors.blackColor1
                  : AppColors.greyColor2,
              fontWeight: widget.isData == true ? FontWeight.bold : null,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            widget.name,
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              wordSpacing: 0.5,
              fontSize: 14,
              color: widget.isData == true
                  ? AppColors.blackColor1
                  : AppColors.greyColor2,
              fontWeight: widget.isData == true ? FontWeight.bold : null,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            widget.payment,
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              wordSpacing: 0.5,
              fontSize: 14,
              color: widget.isData == true
                  ? AppColors.blackColor1
                  : AppColors.greyColor2,
              fontWeight: widget.isData == true ? FontWeight.bold : null,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            widget.status,
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              wordSpacing: 0.5,
              fontSize: 14,
              color: widget.isData == true
                  ? AppColors.blackColor1
                  : AppColors.greyColor2,
              fontWeight: widget.isData == true ? FontWeight.bold : null,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            widget.total,
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              wordSpacing: 0.5,
              fontSize: 14,
              color: widget.isData == true
                  ? AppColors.blackColor1
                  : AppColors.greyColor2,
              fontWeight: widget.isData == true ? FontWeight.bold : null,
            ),
          ),
        ),
        widget.isData == true
            ? Expanded(
                flex: 3,
                child: ToggleButtons(
                  direction: Axis.horizontal,
                  onPressed: (int index) {
                    setState(() {
                      for (int i = 0; i < _selectedFruits.length; i++) {
                        _selectedFruits[i] = i == index;
                      }
                    });
                  },
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  selectedBorderColor: Colors.red[700],
                  selectedColor: Colors.white,
                  fillColor: AppColors.primaryColor,
                  color: AppColors.primaryColor,
                  constraints: const BoxConstraints(
                    minHeight: 40.0,
                    minWidth: 80.0,
                  ),
                  isSelected: _selectedFruits,
                  children: fruits,
                ),
              )
            : Expanded(
                flex: 3,
                child: Text(
                  'Action',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    wordSpacing: 0.5,
                    fontSize: 14,
                    color: widget.isData == true
                        ? AppColors.blackColor1
                        : AppColors.greyColor2,
                    fontWeight: widget.isData == true ? FontWeight.bold : null,
                  ),
                ),
              ),
      ],
    );
  }
}
