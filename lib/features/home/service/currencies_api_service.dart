import 'dart:developer';

import 'package:api_service/features/home/model/all_currencies_model.dart';
import 'package:api_service/features/home/service/interface/currencies_api_service_interface.dart';
import 'package:api_service/shared/client/interface/api_client_interface.dart';
import 'package:api_service/shared/utils/app_urls.dart';

class CurrenciesApiService implements CurrenciesApiInterface {
  // final dioClient = getIt<DioImplementation>();

  final ApiClientInterface dioClient;

  CurrenciesApiService({required this.dioClient});

  @override
  Future<AllCurrenciesModel> getCurrency() async {
    final response = await dioClient.get('${AppUrls.baseUrl}');

    inspect(response);

    switch (response.statusCode) {
      case 200:
        return AllCurrenciesModel.fromJson(response.data);
      default:
        throw Exception();
    }
  }
}
