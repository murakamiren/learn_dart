// Postクラス作成
class Post {
  //props
  final int userId;
  final int id;
  final String title;
  final String body;

  // constructor
  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  //factory covert fromJson
  factory Post.fromJson(Map<String, dynamic> json) => Post(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );
}
