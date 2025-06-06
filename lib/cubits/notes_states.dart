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

// read notes
class ReadNotesLoading extends NotesStates {}

class ReadNotesSuccess extends NotesStates {}

class ReadNotesFail extends NotesStates {
  final String error;

  ReadNotesFail({required this.error});
}

// deleteNOtes
class DeleteNotesLoading extends NotesStates {}

class DeleteNOtesSuccess extends NotesStates {}

class DeleteNOtesFail extends NotesStates {
  final String error;

  DeleteNOtesFail({required this.error});
}
