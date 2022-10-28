import 'dart:convert';

import 'package:api_service/features/home/model/all_currencies_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CurrenciesPrefs {
  static const String currenciesKey = 'currencies';
  static const String offlineKey = 'offline';

  //LISTA DE MOEDAS QUE VEM DA API
  Future<void> setPersistedData(
      List<AllCurrenciesModel> allCurrenciesModel) async {
    final prefs = await SharedPreferences.getInstance();

    final currenciesList = allCurrenciesModel
        .map(
          (e) => jsonEncode(e.toJson()),
        )
        .toList();

    await prefs.setStringList(currenciesKey, currenciesList);
  }

  Future<List<AllCurrenciesModel>> getPersistedDataPrefs() async {
    final prefs = await SharedPreferences.getInstance();

    final currenciesListJson = prefs.getStringList(currenciesKey);
    if (currenciesListJson != null) {
      final result = List<Map<String, dynamic>>.from(
        currenciesListJson.map((e) => jsonDecode(e)),
      );

      return result.map(AllCurrenciesModel.fromJson).toList();
    }
    return [];
  }
  //---------------------------------------------------

  //VERIFICAÇÃO SE O MODO OFFLINE ESTÁ ATIVO
  Future<void> setOfflineModePrefs(bool value) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool(offlineKey, value);
  }

  Future<bool> getOfflineModePrefs() async {
    final prefs = await SharedPreferences.getInstance();

    bool? result = prefs.getBool(offlineKey) ?? false;
    return result;
  }
  //---------------------------------------------------

}
