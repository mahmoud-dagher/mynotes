import 'package:flutter/material.dart';
import 'package:my_notes/shared/components/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
  });
  final String? title;
  final IconData? icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title!,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        const Spacer(),
        CustomIcon(icon: icon, onPressed: onPressed),
      ],
    );
  }
}
