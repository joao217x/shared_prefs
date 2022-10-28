import 'package:api_service/shared/client/interface/api_reponse_interface.dart';
import 'package:api_service/shared/client/interface/api_client_interface.dart';
import 'package:dio/dio.dart' as dio;

class DioImplementation implements ApiClientInterface {
  final client = dio.Dio();

  @override
  Future<ApiResponseInterface> get(
    String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? query,
  }) async {
    final response = await client.get(path);

    return ApiResponseInterface.fromResponse(response);
  }
}
