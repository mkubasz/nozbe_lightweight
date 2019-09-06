

class Task {
  String name;
  String description;
  bool completed = false;
  bool favorite = false;

  Task(this.name, this.description, this.completed, this.favorite);

  Task.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        description = json['description'],
        completed = json['completed'],
        favorite = json['favorite'];

  Map<String, dynamic> toJson() =>
      {
        'name': name,
        'description': description,
        'completed': completed,
        'favorite': favorite,
      };

  bool isCompleted(){
    return this.completed;
  }
}