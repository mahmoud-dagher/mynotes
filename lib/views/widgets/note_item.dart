// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_notes/constants/constants.dart';
import 'package:my_notes/cubits/fetch_notes/fetch_notes_cubit.dart';
import 'package:my_notes/models/note_model/note_model.dart';
import 'package:my_notes/views/widgets/notes_edit_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return NotesEditView(note: note);
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24),
        decoration: BoxDecoration(
          color: Color((note.color ?? tempColor) as int),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title!,
                style: const TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  note.content!,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  refreshDisplay(context);
                },
                icon: const FaIcon(FontAwesomeIcons.trash),
                color: Colors.black,
                iconSize: 24,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                note.date!,
                style: TextStyle(
                  color: Colors.black.withOpacity(.4),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
