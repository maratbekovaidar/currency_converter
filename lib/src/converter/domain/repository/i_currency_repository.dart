import 'dart:convert';

import 'package:currency_converter/src/converter/data/data_source/exchangerate_http_rest_client.dart';
import 'package:currency_converter/src/converter/data/repository/currency_repository.dart';
import 'package:http/http.dart';

class ICurrencyRepository extends CurrencyRepository {
  ExchangerateHttpRestClient exchangerateHttpRestClient =
      ExchangerateHttpRestClient();

  @override
  Future<Map<String, double>> getUSDRates() async {
    try {
      Response response = await exchangerateHttpRestClient.get("/USD");
      return jsonDecode(response.body)['conversion_rates'];
    } catch (e, _) {
      rethrow;
    }
  }

  @override
  Future<Map<String, double>> getTRYRates() async {
    try {
      Response response = await exchangerateHttpRestClient.get("/TRY");
      return jsonDecode(response.body)['conversion_rates'];
    } catch (e, _) {
      rethrow;
    }
  }

  @override
  Future<Map<String, double>> getRUBRates() async {
    try {
      Response response = await exchangerateHttpRestClient.get("/RUB");
      return jsonDecode(response.body)['conversion_rates'];
    } catch (e, _) {
      rethrow;
    }
  }
}
