import 'dart:io';

const String appName = 'DogWorld';

String dogParksServiceURL = Platform.isAndroid ? '10.0.2.2' : 'localhost';
const int dogParksServicePort = 9000;
const String getDogParksApiPath = 'getDogParks';
const String getDogParkInfoApiPath = 'getDogParkInfo';
