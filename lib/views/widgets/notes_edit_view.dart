import 'package:flutter/material.dart';
import 'package:my_notes/shared/components/custom_app_bar.dart';
import 'package:my_notes/shared/components/custom_text_form_field.dart';

class NotesEditView extends StatelessWidget {
  const NotesEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: const Column(
          children: [
            SizedBox(height: 50),
            CustomAppBar(title: 'Edit Notes', icon: Icons.check),
            SizedBox(height: 15),
            CustomTextFormField(
              text: 'Title',
              inputType: TextInputType.text,
              maxLines: 1,
            ),
            SizedBox(height: 15),
            CustomTextFormField(
              text: 'content',
              inputType: TextInputType.text,
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
