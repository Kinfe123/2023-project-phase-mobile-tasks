

import 'model/Task.dart';
import 'dart:io';
bool addTask(List<Task> tasks ){
    print('Please provide a task details here');
    stdout.write('Title: ');
    String title = stdin.readLineSync()!;
    stdout.write('Description: ');
    String description = stdin.readLineSync()!;
    stdout.write('Due Date (yyyy-mm-dd): ');
    DateTime dueDate = DateTime.parse(stdin.readLineSync()!);
    Task task = Task(title, description, dueDate);
    tasks.add(task);
    print('Task added successfully.\n');
    return true;

}