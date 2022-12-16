import 'package:dog_world/home_page/dog_park_entry_list.dart';

import 'dog_park_entry.dart';

const DogParkEntry dogParkEntry1 = DogParkEntry(
  name: "Denver Park",
  description: "What a wonderful park.",
  likeCount: 5,
  dislikeCount: 2,
);

const DogParkEntry dogParkEntry2 = DogParkEntry(
  name: "Seattle Park",
  description: "It rains here a lot.",
  likeCount: 1,
  dislikeCount: 3,
);

const DogParkEntry dogParkEntry3 = DogParkEntry(
  name: "Atlanta Park",
  description: "Greenery is beautiful.",
  likeCount: 10,
  dislikeCount: 3,
);

const DogParkEntry dogParkEntry4 = DogParkEntry(
  name: "Chicago Park",
  description: "Old and needs repair.",
  likeCount: 4,
  dislikeCount: 22,
);

const List<DogParkEntry> dogParkEntryList = [
  dogParkEntry1,
  dogParkEntry2,
  dogParkEntry3,
  dogParkEntry4
];
