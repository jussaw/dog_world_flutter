import 'package:dog_world/dog_parks_list/domain/models/dog_parks_model.dart';

abstract class DogParksRepository {
  Future<DogParksModel> getDogParks();
}
