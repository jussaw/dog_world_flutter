class DogParkDetailsModel {
  DogParkDetailsModel({
    required this.name,
    required this.author,
    required this.description,
    required this.likeCount,
    required this.dislikeCount,
    required this.comments,
  });

  final String name;
  final String author;
  final String description;
  final int likeCount;
  final int dislikeCount;
  final List<String> comments;
}
