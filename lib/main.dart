import 'package:api_service/my_app.dart';
import 'package:api_service/shared/utils/app_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void main() async {
  await firstSetup();

  runApp(const MyApp());
}

Future<void> firstSetup() async {
  //.env urls
  await dotenv.load(fileName: '.env');

  //Dependencies
  AppDependencies().setup();
}
