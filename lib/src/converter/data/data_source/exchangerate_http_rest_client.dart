import 'package:currency_converter/common/api/client/http/http_rest_client.dart';
import 'package:http/http.dart';

class ExchangerateHttpRestClient extends HttpRestClient {
  ExchangerateHttpRestClient() {
    client = Client();
  }

  @override
  late final Client client;

  @override
  String baseUrl =
      "https://v6.exchangerate-api.com/v6/567e2c3057302f28aa862bab/latest";
}
