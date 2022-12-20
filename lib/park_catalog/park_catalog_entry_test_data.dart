import 'package:dog_world/catalog/domain/models/dog_park_entry_model.dart';

DogParkEntryModel dogParkEntry1 = DogParkEntryModel(
  parkName: "Denver Park",
  parkId: 123,
  author: "username1",
  authorId: 456,
  likeCount: 5,
  dislikeCount: 2,
);

DogParkEntryModel dogParkEntry2 = DogParkEntryModel(
  parkName: "Seattle Park",
  parkId: 124,
  author: "username2",
  authorId: 457,
  likeCount: 1,
  dislikeCount: 3,
);

DogParkEntryModel dogParkEntry3 = DogParkEntryModel(
  parkName: "Atlanta Park",
  parkId: 125,
  author: "username3",
  authorId: 458,
  likeCount: 10,
  dislikeCount: 3,
);

DogParkEntryModel dogParkEntry4 = DogParkEntryModel(
  parkName: "Chicago Park",
  parkId: 126,
  author: "username4",
  authorId: 459,
  likeCount: 4,
  dislikeCount: 22,
);

List<DogParkEntryModel> dogParkEntryList = [
  dogParkEntry1,
  dogParkEntry2,
  dogParkEntry3,
  dogParkEntry4
];
