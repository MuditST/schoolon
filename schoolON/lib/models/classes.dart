class Classes {
  final String subject;
  final String type;
  final String teacherName;
  final DateTime time;
  bool isPassed = false;
  bool isHappening = false;

  Classes({this.subject, this.type, this.teacherName, this.time});
}

List<Classes> classes = [
  Classes(
    subject: "Math",
    type: "Online Class",
    teacherName: "J Venkatesan",
    time: DateTime.parse("2020-11-25 10:00:00"),
  ),
  Classes(
    subject: "Physics",
    type: "Online Class",
    teacherName: "Naresh Sethi",
    time: DateTime.parse("2020-11-25 11:00:00"),
  ),
  Classes(
    subject: "German",
    type: "Online Class",
    teacherName: "Dr. Heinz",
    time: DateTime.parse("2020-11-25 12:00:00"),
  ),
  Classes(
    subject: "Comp. Sci.",
    type: "Online Class",
    teacherName: "Sonia Dogra",
    time: DateTime.parse("2020-11-25 13:00:00"),
  ),
];
