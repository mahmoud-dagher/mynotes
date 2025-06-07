// fetch notes
import 'package:my_notes/models/note_model/note_model.dart';

class FetchNotes {}

class FetchNoteInitial extends FetchNotes {}

class FetchNotesLoading extends FetchNotes {}

class FetchNotesSuccess extends FetchNotes {
  final List<NoteModel> notes;

  FetchNotesSuccess(this.notes);
}

class FetchNotesFail extends FetchNotes {
  final String error;

  FetchNotesFail({required this.error});
}
