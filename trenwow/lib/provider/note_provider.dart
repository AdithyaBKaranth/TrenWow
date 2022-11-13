import 'package:flutter/material.dart';
import 'package:trenwow/models/note.dart';
import 'package:trenwow/services/api_service.dart';

class NotesProvider with ChangeNotifier {
  bool isLoading = true;
  List<Note> notes = [];

  /*NotesProvider() {
    fetchNotes();
  }*/

  void sortNotes() {
    notes.sort((a, b) => b.dateadded!.compareTo(a.dateadded!));
  }

  void addNote(Note note) {
    notes.add(note);
    sortNotes();
    notifyListeners();
    ApiService.userCreate(note);
  }

  Future<bool> userlogin(Note note) {
    notes.add(note);
    sortNotes();
    notifyListeners();
    Future<bool> val = ApiService.userLogin(note);
    return val;
  }

  /*
  void deleteNote(Note note) {
    int indexOfNote = notes.indexOf(notes.firstWhere((element) => element.id == note.id));
    notes.removeAt(indexOfNote);
    sortNotes();
    notifyListeners();
    ApiService.deleteNote(note);
  }

  void fetchNotes() async {
    notes = await ApiService.fetchNotes("rohitsemriwal");
    sortNotes();
    isLoading = false;
    notifyListeners();
  }
*/
}
