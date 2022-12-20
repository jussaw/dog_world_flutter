import 'package:dog_world/dog_park_info/domain/models/comment_model.dart';

class DogParkInfoModel {
  DogParkInfoModel({
    required this.parkId,
    required this.parkName,
    required this.authorId,
    required this.authorName,
    required this.body,
    required this.comments,
  });

  final int parkId;
  final String parkName;
  final int authorId;
  final String authorName;
  final String body;
  final List<CommentModel> comments;

  factory DogParkInfoModel.fromJson(Map<String, dynamic> json) {
    List<CommentModel> comments = [];
    for (dynamic comment in json['comments']) {
      CommentModel commentModel = CommentModel.fromJson(comment);
      comments.add(commentModel);
    }

    return DogParkInfoModel(
        parkId: json['parkId'] as int,
        parkName: json['parkName'] as String,
        authorId: json['authorId'] as int,
        authorName: json['authorName'] as String,
        body: json['body'] as String,
        comments: comments);
  }
}
