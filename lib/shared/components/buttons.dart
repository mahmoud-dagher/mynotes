import 'package:flutter/material.dart';
import 'package:my_notes/constants/constants.dart';
import 'package:my_notes/models/size_config/size_config.dart';
import 'package:my_notes/models/size_config/space_widget.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton({super.key, this.text, required this.onTap});
  final String? text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 60,
          width: SizeConfig.screenWidth,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),

          child: Center(
            child: Text(
              text!,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: mainColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
    this.iconColor,
  });
  final VoidCallback? onTap;
  final String? text;
  final IconData? icon;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 60,
          width: SizeConfig.screenWidth,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0xff077070)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: iconColor),
              HorizontalSpace(1),
              Text(
                text!,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
