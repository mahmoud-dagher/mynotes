import 'package:flutter/material.dart';

import 'package:my_notes/cubits/fetch_notes/fetch_notes_cubit.dart';
import 'package:my_notes/models/note_model/note_model.dart';
import 'package:my_notes/shared/components/custom_app_bar.dart';
import 'package:my_notes/shared/components/custom_text_form_field.dart';

class NotesEditViewBody extends StatefulWidget {
  const NotesEditViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<NotesEditViewBody> createState() => _NotesEditViewBodyState();
}

class _NotesEditViewBodyState extends State<NotesEditViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppBar(
              title: 'Edit Notes',
              icon: Icons.check,
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.content = content ?? widget.note.content;
                widget.note.save();
                Navigator.pop(context);
                refreshDisplay(context);
              },
            ),
            const SizedBox(height: 15),
            CustomTextFormField(
              useFloatingLabel: false,
              onChanged: (value) {
                title = value;
              },
              text: widget.note.title,
              inputType: TextInputType.text,
              maxLines: 1,
            ),
            const SizedBox(height: 15),
            CustomTextFormField(
              useFloatingLabel: false,
              onChanged: (value) {
                content = value;
              },
              text: widget.note.content,
              inputType: TextInputType.text,
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
