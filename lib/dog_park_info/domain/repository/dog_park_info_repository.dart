import 'package:dog_world/dog_park_info/domain/models/dog_park_info_model.dart';

abstract class DogParkInfoRepository {
  Future<DogParkInfoModel> getDogParkInfo(int parkId);
}
