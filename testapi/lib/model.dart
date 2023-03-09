class apicall {
  final String? userid;
  final String? id;
  final String? title;
  final String? body;
  apicall({
    required this.userid,
    required this.id,
    required this.title,
    required this.body,
  });

  factory apicall.fromJson(Map<String, dynamic> jsonData) {
    return apicall(
        userid: jsonData["0"]["userId"],
        id: jsonData["0"]["id"],
        title: jsonData["0"]["title"],
        body: jsonData["0"]["body"]);
  }
}
