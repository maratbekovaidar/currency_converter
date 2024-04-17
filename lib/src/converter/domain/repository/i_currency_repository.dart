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
      Map<String, dynamic> data = jsonDecode(response.body)['conversion_rates'];
      return data.map((key, value) =>
          MapEntry<String, double>(key, double.parse(value.toString())));
    } catch (e, _) {
      rethrow;
    }
  }

  @override
  Future<Map<String, double>> getTRYRates() async {
    try {
      Response response = await exchangerateHttpRestClient.get("/TRY");
      Map<String, dynamic> data = jsonDecode(response.body)['conversion_rates'];
      return data.map((key, value) =>
          MapEntry<String, double>(key, double.parse(value.toString())));
    } catch (e, _) {
      rethrow;
    }
  }

  @override
  Future<Map<String, double>> getRUBRates() async {
    try {
      Response response = await exchangerateHttpRestClient.get("/RUB");
      Map<String, dynamic> data = jsonDecode(response.body)['conversion_rates'];
      return data.map((key, value) =>
          MapEntry<String, double>(key, double.parse(value.toString())));
    } catch (e, _) {
      rethrow;
    }
  }
}
