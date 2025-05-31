import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

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
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
          iconSize: 30,
        ),
      ),
    );
  }
}
