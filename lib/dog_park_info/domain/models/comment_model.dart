class CommentModel {
  CommentModel({
    required this.authorId,
    required this.authorName,
    required this.body,
  });

  final int authorId;
  final String authorName;
  final String body;

  factory CommentModel.fromJson(Map<String, dynamic> json) {
    return CommentModel(
      authorId: json['authorId'] as int,
      authorName: json['authorName'] as String,
      body: json['body'] as String,
    );
  }
}
