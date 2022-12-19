import 'dart:convert';

import 'package:dog_world/catalog/domain/models/dog_park_entry_model.dart';

class DogParkListModel {
  DogParkListModel({
    required this.dogParkList,
  });

  List<DogParkEntryModel> dogParkList;

  factory DogParkListModel.fromJson(Map<String, dynamic> json) {
    List<DogParkEntryModel> newDogParkList = [];
    for (dynamic item in json['dogParkList']) {
      DogParkEntryModel dogParkEntryModel = DogParkEntryModel(
        parkName: item['parkName'],
        parkId: item['parkId'],
        author: item['author'],
        authorId: item['authorId'],
        likeCount: item['likeCount'],
        dislikeCount: item['dislikeCount'],
      );
      // DogParkEntryModel dogParkEntryModel =
      // DogParkEntryModel.fromJson(jsonDecode(item));
      newDogParkList.add(dogParkEntryModel);
    }

    return DogParkListModel(
      dogParkList: newDogParkList,
    );
  }
}
