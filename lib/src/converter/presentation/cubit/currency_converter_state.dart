part of 'currency_converter_cubit.dart';

@immutable
abstract class CurrencyConverterState {}

class CurrencyConverterInitial extends CurrencyConverterState {}

class CurrencyConverterLoadingState extends CurrencyConverterState {}

class CurrencyConverterLoadedState extends CurrencyConverterState {
  final Map<String, double> data;
  CurrencyConverterLoadedState({required this.data});
}
