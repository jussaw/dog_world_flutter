class DogParkEntryModel {
  DogParkEntryModel({
    required this.parkName,
    required this.parkId,
    required this.author,
    required this.authorId,
    required this.likeCount,
    required this.dislikeCount,
  });

  final String parkName;
  final int parkId;
  final String author;
  final int authorId;
  final int likeCount;
  final int dislikeCount;

  factory DogParkEntryModel.fromJson(Map<String, dynamic> json) {
    return DogParkEntryModel(
      parkName: json['parkName'] as String,
      parkId: json['parkId'] as int,
      author: json['author'] as String,
      authorId: json['authorId'] as int,
      likeCount: json['likeCount'] as int,
      dislikeCount: json['dislikeCount'] as int,
    );
  }
}
