import 'model/Task.dart';


void getAll(Task task , int index){
  print("Task Number # $index ");
  print("Description:  ${task.description}");
  print("Due Date:  ${task.dueDate}");
  print(task.completed ? "Completed ✅" : "Pending ⌛");
  

}