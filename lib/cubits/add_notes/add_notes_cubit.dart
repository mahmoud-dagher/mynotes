import 'package:hive/hive.dart';
import 'package:my_notes/constants/constants.dart';
import 'package:my_notes/cubits/add_notes/add_notes_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/models/note_model/note_model.dart';

class AddNotesCubit extends Cubit<NotesStates> {
  AddNotesCubit() : super(NotesInitial());
  var box = Hive.box<NoteModel>(notesBox);

  // add notes
  void addNote(NoteModel note) async {
    emit(AddNotesLoading());

    await box
        .add(note)
        .then((value) {
          emit(AddNotesSuccess());
        })
        .catchError((error) {
          emit(AddNotesFail(error: error.toString()));
        });
  }
}
