import 'package:http/http.dart';

abstract interface class RestClient {
  void setBaseUrl({
    required String url,
  });

  // Get:-----------------------------------------------------------------------
  Future<Response> get(
    String uri, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  });

  // Post:----------------------------------------------------------------------
  Future<Response> post(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  });

  // Put:-----------------------------------------------------------------------
  Future<Response> put(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  });

  // Delete:--------------------------------------------------------------------
  Future<Response> delete(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  });
}
