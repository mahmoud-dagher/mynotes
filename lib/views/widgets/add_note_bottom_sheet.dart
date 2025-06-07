// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_notes/cubits/add_notes/add_notes_cubit.dart';
import 'package:my_notes/cubits/add_notes/add_notes_states.dart';

import 'package:my_notes/views/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, NotesStates>(
        listener: (context, state) {
          if (state is AddNotesSuccess) {
            Navigator.pop(context);
            if (state is AddNotesFail) {
              print('fail');
            }
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: State is AddNoteBottomSheet ? true : false,
            child: SingleChildScrollView(child: AddNoteForm()),
          );
        },
      ),
    );
  }
}
