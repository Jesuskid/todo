import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'task.dart';

class Data extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy Mild'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy Fufu'),
  ];

  void updateTask(task){
    task.toogle();
    notifyListeners();
  }

  int get taskCount{
    return _tasks.length;
  }

  UnmodifiableListView<Task> get task{
    return UnmodifiableListView(_tasks);
  }


  void addToTasks(String taskTitle) {
    _tasks.add(Task(name: taskTitle));
    notifyListeners();
  }

  void removeFromList(index){
    _tasks.removeAt(index);
    notifyListeners();
  }

}