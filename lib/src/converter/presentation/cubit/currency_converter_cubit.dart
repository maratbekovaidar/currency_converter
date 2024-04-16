import 'package:bloc/bloc.dart';
import 'package:currency_converter/src/converter/domain/repository/i_currency_repository.dart';
import 'package:meta/meta.dart';

part 'currency_converter_state.dart';

class CurrencyConverterCubit extends Cubit<CurrencyConverterState> {
  CurrencyConverterCubit() : super(CurrencyConverterInitial());

  Future loadCurrency(String currency) async {
    emit(CurrencyConverterLoadingState());
    Map<String, double> data;
    if (currency == "RUB") {
      data = await ICurrencyRepository().getRUBRates();
    } else if (currency == "USD") {
      data = await ICurrencyRepository().getUSDRates();
    } else if (currency == "TRY") {
      data = await ICurrencyRepository().getTRYRates();
    } else {
      data = await ICurrencyRepository().getRUBRates();
    }
    print(data);
    emit(CurrencyConverterLoadedState(data: data));
  }
}
