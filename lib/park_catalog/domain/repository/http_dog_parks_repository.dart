import 'dart:convert';

import 'package:dog_world/constants.dart';
import 'package:dog_world/park_catalog/domain/models/dog_park_entry_list_model.dart';
import 'package:dog_world/park_catalog/domain/repository/dog_parks_repository.dart';
import 'package:http/http.dart' as http;

class HttpDogParksRepository extends DogParksRepository {
  HttpDogParksRepository({required this.client});

  final http.Client client;

  @override
  Future<DogParkListModel> getDogParks() async {
    final response = await http.get(
      Uri(
        scheme: 'http',
        host: dogParksServiceURL,
        port: dogParksServicePort,
        path: getDogParksApiPath,
      ),
    );

    if (response.statusCode == 200) {
      return DogParkListModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load dog park list');
    }
  }
}
