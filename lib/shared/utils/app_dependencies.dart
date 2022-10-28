import 'package:api_service/features/home/controller/currencies_store.dart';
import 'package:api_service/features/home/service/api/currencies_api_service.dart';
import 'package:api_service/main.dart';
import 'package:api_service/shared/client/dio_impl.dart';
import 'package:api_service/shared/client/interface/api_client_interface.dart';

class AppDependencies {
  void setup() {
    //Interface API
    getIt.registerSingleton<ApiClientInterface>(DioImplementation());

    //Services
    getIt.registerSingleton<CurrenciesApiService>(
      CurrenciesApiService(client: getIt.get<ApiClientInterface>()),
    );

    //Stores
    getIt.registerSingleton<CurrenciesStore>(
      CurrenciesStore(serviceClient: getIt.get<CurrenciesApiService>()),
    );
  }
}
