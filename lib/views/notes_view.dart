// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:my_notes/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue[300],
        child: Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
