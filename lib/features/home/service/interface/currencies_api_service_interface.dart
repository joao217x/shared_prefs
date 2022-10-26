import 'package:api_service/features/home/model/all_currencies_model.dart';

abstract class CurrenciesApiInterface {
  Future<AllCurrenciesModel> getCurrency();
}
