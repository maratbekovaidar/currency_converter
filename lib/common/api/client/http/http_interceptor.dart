part of 'http_rest_client.dart';

class HttpInterceptor implements InterceptorContract {
  @override
  Future<BaseRequest> interceptRequest({required BaseRequest request}) async {
    return request;
  }

  @override
  Future<BaseResponse> interceptResponse(
      {required BaseResponse response}) async {
    return response;
  }

  @override
  Future<bool> shouldInterceptRequest() async {
    return false;
  }

  @override
  Future<bool> shouldInterceptResponse() async {
    return false;
  }
}
