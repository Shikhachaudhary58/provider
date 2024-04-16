import 'package:flutter/material.dart';
import '../model/subject.dart';


class SubjectProvider extends ChangeNotifier {
  Subject _subject = Subject(name: " ");

  Subject get subject => _subject;

  void updateSubject(String newName) {
    _subject = Subject(name: newName);
    notifyListeners();
  }
}
