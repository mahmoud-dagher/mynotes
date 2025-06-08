import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:my_notes/constants/constants.dart';
import 'package:my_notes/cubits/fetch_notes/fetch_notes_states.dart';
import 'package:my_notes/models/note_model/note_model.dart';

class FetchNotesCubit extends Cubit<FetchNotesStates> {
  FetchNotesCubit() : super(FetchNoteInitial());

  List<NoteModel>? notes;

  void fetchAllNOtes() {
    var box = Hive.box<NoteModel>(notesBox);

    notes = box.values.toList();
    emit(FetchNotesSuccess(notes!));
  }
}
