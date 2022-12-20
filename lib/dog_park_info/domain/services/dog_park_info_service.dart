import 'package:dog_world/dog_park_info/domain/models/dog_park_info_model.dart';
import 'package:dog_world/dog_park_info/domain/repository/dog_park_info_repository.dart';
import 'package:dog_world/dog_park_info/domain/repository/hhtp_dog_park_info_repository.dart';
import 'package:http/http.dart' as http;

class DogParkInfoService {
  DogParkInfoService();

  static final http.Client client = http.Client();
  static DogParkInfoRepository repository =
      HttpDogParkInfoRepository(client: client);

  Future<DogParkInfoModel> getDogParkInfo(int parkId) async {
    // TODO: Remove delay. Used for testing loading screen
    await Future.delayed(const Duration(seconds: 2));
    return repository.getDogParkInfo(parkId);
  }
}
