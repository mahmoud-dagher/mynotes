abstract class NotesStates {}

// initial class

class NotesInitial extends NotesStates {}

class NotesLoading extends NotesStates {}

// add notes

class AddNotesSuccess extends NotesStates {}

class AddNotesFail extends NotesStates {
  final String error;

  AddNotesFail({required this.error});
}

// read notes

class ReadNotesSuccess extends NotesStates {}

class ReadNotesFail extends NotesStates {
  final String error;

  ReadNotesFail({required this.error});
}

// deleteNOtes

class DeleteNOtesSuccess extends NotesStates {}

class DeleteNOtesFail extends NotesStates {
  final String error;

  DeleteNOtesFail({required this.error});
}
