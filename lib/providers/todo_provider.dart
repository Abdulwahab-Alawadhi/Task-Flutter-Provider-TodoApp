import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';

class TodoProvider extends ChangeNotifier {
  // DATA
  List<Todo> todos = [];
  // FUNCTIONS

  void addToList(newTitle) {
    var todo = Todo(id: todos.length + 1, title: newTitle);
    todos.add(todo);
    notifyListeners();
  }

  void checkBox(int id) {
    var wahabz = todos.firstWhere((x) => x.id == id);
    /* we want to access a list and use a method that would find a specific key 
    in the list(in this case id) that matches something (again, in this case id) */
    wahabz.done = !wahabz.done;
    /* done is set to false by default, we want to change the setting of done every time
      the function (box get checked/unchecked) executes*/
    notifyListeners();
  }

  void deleteTask(int id) {
    todos.removeWhere((x) => x.id == id);
    notifyListeners();
  }

  //  void editTask(int id) {
  //   var wahabz = todos.firstWhere((x) => x.id == id);

  //   notifyListeners();
  // }
}
