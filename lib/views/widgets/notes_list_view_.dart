import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_notes/cubits/fetch_notes/fetch_notes_cubit.dart';
import 'package:my_notes/cubits/fetch_notes/fetch_notes_states.dart';
import 'package:my_notes/models/note_model/note_model.dart';

import 'package:my_notes/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchNotesCubit, FetchNotesStates>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<FetchNotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: NoteItem(note: notes[index]),
              );
            },
            itemCount: notes.length, // Get the count from Hive box
          ),
        );
      },
    );
  }
}
