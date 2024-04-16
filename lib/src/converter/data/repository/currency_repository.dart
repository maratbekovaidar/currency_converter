abstract class CurrencyRepository {
  Future<Map<String, double>> getUSDRates();
  Future<Map<String, double>> getTRYRates();
  Future<Map<String, double>> getRUBRates();
}
