class savings {
  late final int id;
  late final String title;
  late final String body;

  savings({required this.id, required this.title, required this.body});

  factory savings.fromJson(Map<String, dynamic> json) {
    return savings(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
