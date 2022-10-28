import 'package:api_service/features/home/model/all_currencies_model.dart';

abstract class CurrenciesApiServiceInterface {
  Future<AllCurrenciesModel> getCurrencyService();
}
