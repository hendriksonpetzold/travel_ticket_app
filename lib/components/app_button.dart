import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppButton extends StatelessWidget {
  final void Function()? onTap;
  final double height;
  final double width;
  final String label;
  final Rx<bool> isSelected;
  const AppButton({
    Key? key,
    required this.onTap,
    required this.label,
    this.height = 55,
    this.width = 140,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: isSelected.value ? const Color(0xFFD64B43) : Colors.grey[300],
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: isSelected.value ? Colors.white : Colors.grey[800],
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
