import 'package:flutter/material.dart';
import 'package:my_notes/constants/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.text,
    this.suffixIcon,
    this.prefixIcon,
    required this.inputType,
    this.onSaved,
    this.onChanged,
    this.maxLines,
    this.useFloatingLabel = true, // Default to floating label behavior
  });

  final String? text;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final TextInputType? inputType;
  final void Function(String?)? onSaved;
  final ValueSetter<String>? onChanged;
  final int? maxLines;
  final bool useFloatingLabel;

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
          labelText: useFloatingLabel ? text : null, // Use labelText for floating label
          hintText: useFloatingLabel ? null : text, // Use hintText for static hint
          labelStyle: TextStyle(color: primaryColor),
          hintStyle: TextStyle(color: primaryColor.withOpacity(0.6)),
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}