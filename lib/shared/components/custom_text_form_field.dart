import 'package:flutter/material.dart';
import 'package:my_notes/constants/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.text,
    this.suffixICon,
    this.prefixIcon,
    required this.inputType,
    this.onSaved,
    this.onChanged,
    this.maxLines,
  });

  final String? text;
  final IconData? suffixICon;
  final IconData? prefixIcon;
  final TextInputType? inputType;
  final void Function(String?)? onSaved;
  final ValueSetter<String>? onChanged;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        cursorColor: primaryColor,
        key: text != null ? Key(text!) : null,
        keyboardType: inputType,
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field is required';
          } else {
            return null;
          }
        },
        onChanged: onChanged,
        maxLines: maxLines,
        style: const TextStyle(overflow: TextOverflow.ellipsis),

        decoration: InputDecoration(
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(primaryColor),
          labelText: text,
          labelStyle: TextStyle(color: primaryColor),

          // hintText: text,
          // hintStyle: TextStyle(color: primaryColor),
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          suffixIcon: suffixICon != null ? Icon(suffixICon) : null,
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
