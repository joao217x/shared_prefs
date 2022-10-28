import 'dart:developer';

import 'package:api_service/features/home/model/all_currencies_model.dart';
import 'package:api_service/features/home/service/api/interface/currencies_api_service_interface.dart';
import 'package:api_service/shared/client/interface/api_client_interface.dart';
import 'package:api_service/shared/utils/app_urls.dart';

class CurrenciesApiService implements CurrenciesApiServiceInterface {
  final ApiClientInterface client;

  CurrenciesApiService({required this.client});

  @override
  Future<AllCurrenciesModel> getCurrencyService() async {
    final response = await client.get('${AppUrls.baseUrl}');

    inspect(response);

    switch (response.statusCode) {
      case 200:
        return AllCurrenciesModel.fromJson(response.data);
      default:
        throw Exception();
    }
  }
}
