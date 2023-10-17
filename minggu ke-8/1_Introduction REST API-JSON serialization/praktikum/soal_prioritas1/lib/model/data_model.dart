class DataModel {
  int id;
  String title;
  String body;
  int userId;

  DataModel(
      {required this.id,
      required this.title,
      required this.body,
      required this.userId});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        id: json['id'],
        title: json['title'],
        body: json['body'],
        userId: json['userId']);
  }

  Map<String, dynamic> toJson() =>
      {"id": id, "title": title, "body": body, "userId": userId};
}
