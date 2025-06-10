import 'package:flutter/material.dart';
import 'package:my_notes/models/note_model/note_model.dart';
import 'package:my_notes/views/widgets/note_edit_view_body.dart';

class NotesEditView extends StatelessWidget {
  const NotesEditView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: NotesEditViewBody(note: note));
  }
}
