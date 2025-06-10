import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, required this.onPressed});
  final IconData? icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: 47,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        // ignore: deprecated_member_use
        color: Colors.white.withOpacity(.05),
      ),
      child: Center(
        child: IconButton(icon: Icon(icon, size: 30), onPressed: onPressed),
      ),
    );
  }
}
