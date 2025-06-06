// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:my_notes/constants/constants.dart';

import 'package:my_notes/models/note_model/note_model.dart';

import 'package:my_notes/views/notes_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Hive.initFlutter();
    print('Hive initialized successfully');
  } catch (e) {
    print('Hive initialization failed: $e');
  }
  await Hive.openBox(notesBox);
  Hive.registerAdapter(NoteModelAdapter());

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotesView(),
    );
  }
}
