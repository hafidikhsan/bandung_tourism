import 'package:bandung_tourism/theme/theme_data.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final double width;
  final String text;
  final Function() onTap;
  const CustomButton({
    Key? key,
    required this.color,
    required this.width,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        primary: color,
        minimumSize: Size(
          (width > 500)
              ? 500
              : (width < 280)
                  ? 300
                  : width,
          50,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
      child: Text(
        text,
        style: bSubtitle4.copyWith(color: bTextPrimary),
      ),
    );
  }
}
