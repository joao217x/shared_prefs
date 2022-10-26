import 'package:api_service/shared/client/interface/api_reponse_interface.dart';

abstract class ApiClientInterface {
  Future<ApiResponseInterface> get(
    String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? query,
  });

  // Future<AppNameApiResponse> post(
  //   String path, {
  //   Map<String, String>? body,
  //   Map<String, dynamic>? query,
  // });
}
