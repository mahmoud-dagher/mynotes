// fetch notes

class FetchNotesStates {}

class FetchNoteInitial extends FetchNotesStates {}

class FetchNotesLoading extends FetchNotesStates {}

class FetchNotesSuccess extends FetchNotesStates {
  FetchNotesSuccess();
}
