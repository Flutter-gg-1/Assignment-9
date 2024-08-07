class Project {
  String? name;
  String? id;
  String? deadline;
  List? team;

  Project({this.name, this.id, this.deadline, this.team});
  factory Project.fromJson(Map json) {
    return Project(name: json["projects"],);
  }
}
