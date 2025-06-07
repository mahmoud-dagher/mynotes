import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/constants/constants.dart';
import 'package:my_notes/cubits/add_notes_cubit.dart';
import 'package:my_notes/cubits/notes_states.dart';
import 'package:my_notes/models/note_model/note_model.dart';
import 'package:my_notes/shared/components/buttons.dart';
import 'package:my_notes/shared/components/custom_text_form_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: AnimatedPadding(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom,
          top: 24,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min, // important to fit to content
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              CustomTextFormField(
                onSaved: (value) {
                  title = value;
                },
                text: 'Note Title',
                maxLines: 1,
                inputType: TextInputType.text,
              ),
              const SizedBox(height: 15),
              CustomTextFormField(
                text: 'Content',
                onSaved: (value) {
                  subTitle = value;
                },
                inputType: TextInputType.text,
                maxLines: 5,
              ),
              const SizedBox(height: 32),
              BlocBuilder<AddNotesCubit, NotesStates>(
                builder: (context, state) {
                  return GeneralButton(
                    isLoading: State is AddNotesLoading ? true : false,
                    text: 'Add',
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        var noteModel = NoteModel(
                          title: title!,
                          subTitle: subTitle!,
                          date: DateTime.now().toString(),
                          color: noteColor.length,
                        );
                        BlocProvider.of<AddNotesCubit>(
                          context,
                          listen: false,
                        ).addNote(noteModel);
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  );
                },
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
