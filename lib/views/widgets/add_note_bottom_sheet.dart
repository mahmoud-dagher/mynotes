import 'package:flutter/material.dart';
import 'package:my_notes/views/widgets/buttons.dart';
import 'package:my_notes/views/widgets/custom_text_form_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.0,
        right: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomTextFormField(
              text: 'Note Title',
              maxLines: 1,
              inputType: TextInputType.text,
            ),
            SizedBox(height: 15),
            CustomTextFormField(
              text: 'Content',
              inputType: TextInputType.text,
              maxLines: 5,
            ),
            SizedBox(height: 32),
            GeneralButton(text: 'Add ', onTap: () {}),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
