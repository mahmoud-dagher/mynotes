import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:my_notes/constants/constants.dart';
import 'package:my_notes/cubits/fetch_notes/fetch_notes_states.dart';
import 'package:my_notes/models/note_model/note_model.dart';

class FetchNotesCubit extends Cubit<FetchNotes> {
  FetchNotesCubit() : super(FetchNoteInitial());

  void fetchAllNOtes() async {
    try {
      var box = Hive.box<NoteModel>(notesBox);

      List<NoteModel> notes = box.values.toList();
      emit(FetchNotesSuccess(notes));
    } catch (error) {
      emit(FetchNotesFail(error: error.toString()));
    }
  }
}
