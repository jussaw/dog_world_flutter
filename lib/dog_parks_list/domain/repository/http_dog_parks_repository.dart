import 'dart:convert';

import 'package:dog_world/constants.dart';
import 'package:dog_world/dog_parks_list/domain/models/dog_parks_model.dart';
import 'package:dog_world/dog_parks_list/domain/repository/dog_parks_repository.dart';
import 'package:http/http.dart' as http;

class HttpDogParksRepository extends DogParksRepository {
  HttpDogParksRepository({required this.client});

  final http.Client client;

  @override
  Future<DogParksModel> getDogParks() async {
    final response = await http.get(Uri(
      host: dogParksServiceURL,
      path: getDogParksApiPath,
    ));

    if (response.statusCode == 200) {
      return DogParksModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }
}
