import 'dart:io';
import 'package:task_01/src/model/Task.dart';
import 'package:task_01/task_manager.dart';


void main() {
 
  

  while (true) {
    print('Task Manager\n');
    print('1. Add a new task');
    print('2. View all tasks');
    print('3. View only completed tasks');
    print('4. View only pending tasks');
    print('5. Edit a task');
    print('6. Delete a task');
    print('7. Exit\n');
    stdout.write('Enter your choice: ');
    String? choice = stdin.readLineSync()!;
    switch (choice) {
      case '1':
        
        // taskManager.addTask();
        addTask(tasks);
        break;
      case '2':
        viewTasks(tasks);
        break;
      case '3':
        viewTasks(tasks , completed: true);
        break;
      case '4':
        viewTasks(tasks , pending: true);
        break;
      case '5':
        editTask(tasks);
        break;
      case '6':
        deleteTask(tasks);
        break;
      case '7':
        print('Exiting...');
        return;
      default:
        print('Invalid choice.\n');
    }
  }
}