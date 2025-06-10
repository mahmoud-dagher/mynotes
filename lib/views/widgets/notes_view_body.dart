// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:my_notes/shared/components/custom_app_bar.dart';
import 'package:my_notes/views/widgets/note_item.dart';
import 'package:my_notes/views/widgets/notes_list_view_.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(title: 'Notes', icon: Icons.search, onPressed: () {}),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
