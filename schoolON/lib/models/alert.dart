class Alert {
  final String title;
  final String subject;
  final DateTime time;

  Alert({this.title, this.subject, this.time});
}

List<Alert> recentAlerts = [
  Alert(
    title: "Math Test",
    subject: "Calculus",
    time: DateTime.parse("2020-11-26 08:30:00"),
  ),
  Alert(
    title: "Physics Test",
    subject: "Fluids",
    time: DateTime.parse("2020-11-25 20:30:00"),
  ),
];
