class Task {
  String title;
  String description;
  DateTime dueDate;
  bool completed = false;

  Task(this.title, this.description, this.dueDate) {
    completed = false;
  }

  void markAsCompleted() {
    completed = true;
  }

  void update(String title, String description, DateTime dueDate) {
    this.title = title;
    this.description = description;
    this.dueDate = dueDate;
  }

  @override
  String toString() {
    return '$title\nDescription: $description\nDue Date: ${dueDate.toString()}\nStatus: ${completed ? 'Completed' : 'Pending'}';
  }
}
