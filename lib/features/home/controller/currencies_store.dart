import 'package:api_service/features/home/model/all_currencies_model.dart';
import 'package:api_service/features/home/service/currencies_api_service.dart';
import 'package:mobx/mobx.dart';
part 'currencies_store.g.dart';

class CurrenciesStore = _CurrenciesStoreBase with _$CurrenciesStore;

abstract class _CurrenciesStoreBase with Store {
  final CurrenciesApiService serviceClient;

  _CurrenciesStoreBase({required this.serviceClient});

  AllCurrenciesModel? result;
  Future<AllCurrenciesModel?> getCurrency() async {
    try {
      result = await serviceClient.getCurrency();
    } catch (_) {
      result = null;
    }
    return result;
  }
}
