import 'dart:convert';

import 'package:dog_world/dog_park_info/domain/models/dog_park_info_model.dart';
import 'package:dog_world/dog_park_info/domain/repository/dog_park_info_repository.dart';
import 'package:dog_world/constants.dart';
import 'package:http/http.dart' as http;

class HttpDogParkInfoRepository extends DogParkInfoRepository {
  HttpDogParkInfoRepository({
    required this.client,
  });

  final http.Client client;

  @override
  Future<DogParkInfoModel> getDogParkInfo(int parkId) async {
    // final headers = {'parkid': parkId.toString()};
    final response = await http.get(
      Uri(
          scheme: 'http',
          host: dogParksServiceURL,
          port: dogParksServicePort,
          path: getDogParkInfoApiPath,
          queryParameters: {'parkId': parkId.toString()}),
    );

    if (response.statusCode == 200) {
      return DogParkInfoModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load dog park info');
    }
  }
}
