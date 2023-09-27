class Homework {
  final String title;
  final DateTime dueTime;
  bool isDone = false;

  Homework({this.title, this.dueTime});
}

List<Homework> recentHomeworks = [
  Homework(
    title: "MySQL Practice",
    dueTime: DateTime.parse("2020-11-25 16:30:00"),
  ),
  Homework(
    title: "Viscosity Exercises",
    dueTime: DateTime.parse("2020-11-25 14:30:00"),
  ),
];
