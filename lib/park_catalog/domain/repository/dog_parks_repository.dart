import 'package:dog_world/park_catalog/domain/models/dog_park_entry_list_model.dart';

abstract class DogParksRepository {
  Future<DogParkListModel> getDogParks();
}
