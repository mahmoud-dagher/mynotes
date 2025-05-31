import 'package:flutter/material.dart';
import 'package:my_notes/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Notes',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
