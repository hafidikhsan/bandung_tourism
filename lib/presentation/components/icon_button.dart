import 'package:bandung_tourism/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconButton extends StatelessWidget {
  final Color color;
  final double width;
  final String text;
  final String icon;
  final Function() onTap;
  const CustomIconButton({
    Key? key,
    required this.color,
    required this.width,
    required this.text,
    required this.icon,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            color: bTextPrimary,
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              text,
              style: bSubtitle4.copyWith(color: bTextPrimary),
            ),
          ),
        ],
      ),
    );
  }
}
