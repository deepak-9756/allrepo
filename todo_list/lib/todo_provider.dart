import 'package:flutter/foundation.dart';
class TodoProvider extends ChangeNotifier {
  List<String> _todo_list = [];
  get todo => _todo_list;
  set todo_list(value) {
    _todo_list.add(value);
    notifyListeners();
  }
  void removeTaskAtIndex(int index) {
    if (index >= 0 && index < _todo_list.length) {
      _todo_list.removeAt(index);
      notifyListeners();
    }
  }
}