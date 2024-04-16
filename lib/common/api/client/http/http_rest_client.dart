import 'package:currency_converter/common/api/client/rest/rest_client.dart';
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http_interceptor.dart';

part 'http_configs.dart';
part 'http_interceptor.dart';

abstract class HttpRestClient implements RestClient {
  late final Client client;
  String baseUrl = "";

  @override
  void setBaseUrl({required String url}) {
    baseUrl = url;
  }

  @override
  Future<Response> get(
    String uri, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      Uri url = Uri.parse(baseUrl + uri);
      url.addParameters(queryParameters);
      final http.Response response = await client.get(
        url,
        headers: headers,
      );
      return response;
    } catch (e, _) {
      rethrow;
    }
  }

  @override
  Future<Response> post(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      Uri url = Uri.parse(baseUrl + uri);
      url.addParameters(queryParameters);
      http.Response response = await client.post(
        url,
        body: data,
      );
      return response;
    } catch (e, _) {
      rethrow;
    }
  }

  @override
  Future<Response> put(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      Uri url = Uri.parse(baseUrl + uri);
      url.addParameters(queryParameters);
      http.Response response = await client.put(url, body: data);
      return response;
    } catch (e, _) {
      rethrow;
    }
  }

  @override
  Future<Response> delete(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      Uri url = Uri.parse(baseUrl + uri);
      url.addParameters(queryParameters);
      http.Response response = await client.delete(
        url,
        body: data,
      );
      return response;
    } catch (e, _) {
      rethrow;
    }
  }
}
