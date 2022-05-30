import 'package:bandung_tourism/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomImageButton extends StatelessWidget {
  final Color color;
  final double width;
  final bool isLight;
  final String icon;
  final Function() onTap;
  const CustomImageButton({
    Key? key,
    required this.color,
    required this.width,
    required this.isLight,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: width,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        child: (isLight)
            ? SvgPicture.asset(
                icon,
                height: 24,
              )
            : SvgPicture.asset(
                icon,
                color: bTextPrimary,
                height: 24,
              ),
      ),
    );
  }
}
