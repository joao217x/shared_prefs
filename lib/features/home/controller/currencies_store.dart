import 'package:api_service/features/home/model/all_currencies_model.dart';
import 'package:api_service/features/home/service/api/currencies_api_service.dart';
import 'package:api_service/features/home/service/shared_preferences/currencies_prefs.dart';
import 'package:mobx/mobx.dart';
part 'currencies_store.g.dart';

class CurrenciesStore = _CurrenciesStoreBase with _$CurrenciesStore;

abstract class _CurrenciesStoreBase with Store {
  final CurrenciesApiService serviceClient;
  final prefs = CurrenciesPrefs();

  _CurrenciesStoreBase({required this.serviceClient});

  //GET DA API
  AllCurrenciesModel? result;

  Future<AllCurrenciesModel?> getCurrency() async {
    try {
      result = await serviceClient.getCurrencyService();
    } catch (_) {
      result = null;
    }
    return result;
  }
  //---------------------------------------------------

  //GET DAS MOEDAS QUE FORAM SALVAS
  @action
  Future<void> getPersistedData() async {
    await prefs.getPersistedDataPrefs();
  }
  //---------------------------------------------------

  //VERIFICAÇÃO SE MODO OFFLINE ESTÁ ATIVO

  //variavel que será checada na view
  @observable
  bool isOffline = false;
  @action
  void _setIsOffline(bool value) => isOffline = value;

  //set do prefs
  @action
  Future<void> setOfflineMode(bool value) async {
    await prefs.setOfflineModePrefs(value);
  }

  //get do prefs
  @action
  Future<void> getOfflineMode() async {
    final result = await prefs.getOfflineModePrefs();

    _setIsOffline(result);
  }
  //---------------------------------------------------

}
