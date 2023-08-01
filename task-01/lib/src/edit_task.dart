import 'dart:io';

import 'package:task_01/src/view_tasks.dart';

import 'model/Task.dart';

void editTask(List<Task> tasks ){
  

   if (tasks.isEmpty) {
      print('No tasks to edit.\n');
      return;
    }
    viewTasks(tasks);
    stdout.write('Enter task number to edit: ');
    int index = int.parse(stdin.readLineSync()!) - 1;
    if (index < 0 || index >= tasks.length) {
      print('Invalid task number - Please choose from 1 - ${tasks.length}.\n' );;
      return;
    }
    Task task = tasks[index];
    stdout.write('Enter new title (leave blank to keep current title): ');
    String? title = stdin.readLineSync();
    stdout.write('Enter new description (leave blank to keep current description): ');
    String? description = stdin.readLineSync();
    stdout.write('Enter new due date (yyyy-mm-dd) (leave blank to keep current due date): ');
    String? input = stdin.readLineSync()!;
    DateTime? dueDate = input.isNotEmpty ? DateTime.parse(input) : null;
    stdout.write('Mark task as completed (y/n) (leave blank to keep current status): ');
    String? markAsCompleted = stdin.readLineSync()!;
    if (title != null) {
      task.title = title;
    }
    if (description != null) {
      task.description = description;
    }
    if (dueDate != null) {
      task.dueDate = dueDate;
    }
    if (markAsCompleted != null && markAsCompleted.toLowerCase() == 'y') {
      task.completed = true;
    }
    print('Task updated successfully.\n');
  
}