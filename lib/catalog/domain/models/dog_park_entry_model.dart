class DogParkEntryModel {
  DogParkEntryModel({
    required this.parkName,
    required this.parkId,
    required this.author,
    required this.authorId,
    required this.likeCount,
    required this.dislikeCount,
  });

  String parkName;
  int parkId;
  String author;
  int authorId;
  int likeCount;
  int dislikeCount;

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
