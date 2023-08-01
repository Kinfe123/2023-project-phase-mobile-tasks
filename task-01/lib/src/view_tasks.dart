import 'package:task_01/src/get_all.dart';

import 'model/Task.dart';

void viewTasks(List<Task> tasks , {bool? completed , bool? pending}){
   List<Task> filteredTasks = tasks;
    if (completed != null && completed == true) {
      filteredTasks = filteredTasks.where((task) => task.completed).toList();
    } else if (pending != null && completed == false) {
      filteredTasks = filteredTasks.where((task) => !task.completed).toList();
    }
    if (filteredTasks.isEmpty) {
      print('No tasks found.\n');
    } else {
      for(int i=0; i<filteredTasks.length; i++){
        getAll(filteredTasks[i] , i);
      }
    }

  
}