import 'dart:convert';
import 'dart:developer';

import 'package:trenwow/models/note.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static String _baseUrl = "http://192.168.0.161:5000/api/user";

  static Future<void> userCreate(Note note) async {
    Uri requestUri = Uri.parse(_baseUrl + "/createaccount");
    var response = await http.post(requestUri, body: note.toMap());
    print(response.body);
    var decoded = jsonDecode(response.body);
    log(decoded.toString());
  }

  static Future<bool> userLogin(Note note) async {
    Uri requestUri = Uri.parse(_baseUrl + "/login");
    var response = await http.post(requestUri, body: note.toMap());
    final decoded = jsonDecode(response.body);
    final val = decoded["success"];
    if (val == true)
      return true;
    else
      return false;
  }

  static Future<void> deleteNote(Note note) async {
    Uri requestUri = Uri.parse(_baseUrl + "/delete");
    var response = await http.post(requestUri, body: note.toMap());
    var decoded = jsonDecode(response.body);
    log(decoded.toString());
  }

  static Future<List<Note>> fetchNotes(String userid) async {
    Uri requestUri = Uri.parse(_baseUrl + "/list");
    var response = await http.post(requestUri, body: {"userid": userid});
    var decoded = jsonDecode(response.body);

    List<Note> notes = [];
    for (var noteMap in decoded) {
      Note newNote = Note.fromMap(noteMap);
      notes.add(newNote);
    }

    return notes;
  }
}
