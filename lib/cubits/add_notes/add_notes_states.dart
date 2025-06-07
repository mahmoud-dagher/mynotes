abstract class NotesStates {}

// initial class

class NotesInitial extends NotesStates {}

class NotesLoading extends NotesStates {}

// add notes
class AddNotesLoading extends NotesStates {}

class AddNotesSuccess extends NotesStates {}

class AddNotesFail extends NotesStates {
  final String error;

  AddNotesFail({required this.error});
}
