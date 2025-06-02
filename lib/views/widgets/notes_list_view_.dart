import 'package:flutter/material.dart';
import 'package:my_notes/constants/colors.dart';
import 'package:my_notes/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final color = noteColor[index % noteColor.length];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: NoteItem(color: color),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
