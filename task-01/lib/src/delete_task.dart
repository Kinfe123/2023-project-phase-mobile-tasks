import 'package:task_01/src/view_tasks.dart';
import 'model/Task.dart';
import 'dart:io';

void deleteTask(List<Task> tasks ){
    if (tasks.isEmpty) {
      print('No tasks to delete.\n');
      return;
    }
    viewTasks(tasks);
    stdout.write('Enter task number to delete: ');
    int index = int.parse(stdin.readLineSync()!) - 1;
    if (index < 0 || index >= tasks.length) {
      print('Invalid task number - Please choose from 1 - ${tasks.length}.\n' );
      return;
    }
    tasks.removeAt(index);
    print('Task deleted successfully.\n');
}

  
  
