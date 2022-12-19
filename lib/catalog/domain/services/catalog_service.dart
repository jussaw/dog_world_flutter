import 'package:dog_world/catalog/domain/models/dog_park_entry_list_model.dart';
import 'package:dog_world/catalog/domain/repository/http_dog_parks_repository.dart';
import 'package:http/http.dart' as http;

class CatalogService {
  CatalogService();

  static final http.Client client = http.Client();
  static HttpDogParksRepository httpDogParksRepository =
      HttpDogParksRepository(client: client);

  Future<DogParkListModel> getDogParks() async {
    Future<DogParkListModel> dogParkListModel =
        httpDogParksRepository.getDogParks();
    return dogParkListModel;
  }
}
