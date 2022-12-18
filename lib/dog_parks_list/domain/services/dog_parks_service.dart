import 'package:dog_world/dog_parks_list/domain/models/dog_parks_model.dart';
import 'package:dog_world/dog_parks_list/domain/repository/http_dog_parks_repository.dart';
import 'package:http/http.dart' as http;

class DogParksService {
  DogParksService();

  static final http.Client client = http.Client();
  static HttpDogParksRepository httpDogParksRepository =
      HttpDogParksRepository(client: client);

  DogParksModel getDogParks() {
    DogParksModel dogParksModel =
        httpDogParksRepository.getDogParks() as DogParksModel;
    return dogParksModel;
  }
}
