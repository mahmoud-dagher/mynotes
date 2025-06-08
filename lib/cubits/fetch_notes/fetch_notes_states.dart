// fetch notes
import 'package:my_notes/models/note_model/note_model.dart';

class FetchNotesStates {}

class FetchNoteInitial extends FetchNotesStates {}

class FetchNotesLoading extends FetchNotesStates {}

class FetchNotesSuccess extends FetchNotesStates {
  final List<NoteModel> notes;

  FetchNotesSuccess(this.notes);
}
