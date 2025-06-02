import 'package:flutter/material.dart';
import 'package:my_notes/views/widgets/buttons.dart';
import 'package:my_notes/views/widgets/custom_text_form_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom,
        top: 24,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min, // important to fit to content
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            CustomTextFormField(
              text: 'Note Title',
              maxLines: 1,
              inputType: TextInputType.text,
            ),
            const SizedBox(height: 15),
            CustomTextFormField(
              text: 'Content',
              inputType: TextInputType.text,
              maxLines: 5,
            ),
            const SizedBox(height: 32),
            GeneralButton(text: 'Add', onTap: () {}),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
