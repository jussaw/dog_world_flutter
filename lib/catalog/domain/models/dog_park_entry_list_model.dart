import 'package:dog_world/catalog/domain/models/dog_park_entry_model.dart';

class DogParkListModel {
  DogParkListModel({
    required this.dogParkList,
  });

  List<DogParkEntryModel> dogParkList;

  factory DogParkListModel.fromJson(Map<String, dynamic> json) {
    List<DogParkEntryModel> newDogParkList = [];
    for (dynamic park in json['dogParkList']) {
      DogParkEntryModel dogParkEntryModel = DogParkEntryModel.fromJson(park);
      newDogParkList.add(dogParkEntryModel);
    }

    return DogParkListModel(
      dogParkList: newDogParkList,
    );
  }
}
