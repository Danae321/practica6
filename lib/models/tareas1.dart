class Task {
  final int? id;
  final int userId;
  final String title;
  final bool completed;

  Task(
      {this.id,
      required this.userId,
      required this.title,
      required this.completed});

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'],
      userId: map['userId'],
      title: map['title'],
      completed: map['completed'] ==
          1,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'title': title,
      'completed': completed
          ? 1
          : 0,
    };
  }
}
