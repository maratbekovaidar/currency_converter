import 'package:currency_converter/common/const/currency_abbreviations.dart';
import 'package:currency_converter/src/converter/presentation/cubit/currency_converter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<String> list =
    CurrencyAbbreviations().currencyAbbreviations.values.toList();

List<String> select = ["RUB", "USD", "TRY"];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropdownValue = list.first;
  String dropdown2Value = select.first;

  Map<String, double> currencyRates = {};

  late TextEditingController fromTextEditingController;
  late TextEditingController toTextEditingController = TextEditingController();

  late CurrencyConverterCubit currencyCubit;
  @override
  void initState() {
    super.initState();

    fromTextEditingController = TextEditingController(text: 1.toString());
    toTextEditingController = TextEditingController();

    currencyCubit = BlocProvider.of<CurrencyConverterCubit>(context);

    currencyCubit.loadCurrency("RUB");
  }

  void convertCurrency() {
    toTextEditingController.text = ((currencyRates[CurrencyAbbreviations()
                .currencyAbbreviations2[dropdownValue]])! *
            double.parse(fromTextEditingController.text))
        .toString();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CurrencyConverterCubit, CurrencyConverterState>(
      listener: (context, state) {
        if (state is CurrencyConverterLoadedState) {
          currencyRates = state.data;
          convertCurrency();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Currency convertor"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            /// Texts
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1 ${CurrencyAbbreviations().currencyAbbreviations[dropdown2Value]}",
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "${currencyRates[CurrencyAbbreviations().currencyAbbreviations2[dropdownValue]]} ${dropdownValue}",
                  style: const TextStyle(
                    fontSize: 36,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  "Apr 16, 11:20 UTC · Disclaimer",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 32),

            /// Fields
            Column(
              children: [
                ///  From
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    /// Count
                    Flexible(
                      flex: 1,
                      child: TextField(
                        controller: fromTextEditingController,
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          if (value != "") {
                            convertCurrency();
                          } else {
                            toTextEditingController.text = "";
                          }
                        },
                        decoration:
                            const InputDecoration(border: OutlineInputBorder()),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 35,
                        width: 1,
                        color: Colors.black,
                      ),
                    ),

                    /// Currency
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: DropdownButton<String>(
                        value: dropdown2Value,
                        icon: const Icon(Icons.arrow_drop_down),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: const SizedBox(),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            dropdown2Value = value!;
                          });
                          currencyCubit.loadCurrency(dropdown2Value);
                        },
                        items: select
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: SizedBox(
                                width: (MediaQuery.of(context).size.width / 2) -
                                    50,
                                child: Text(value)),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 14),

                /// To
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    /// Count
                    Flexible(
                      flex: 1,
                      child: TextField(
                        controller: toTextEditingController,
                        onChanged: (value) {
                          if (value != "") {
                            convertCurrency();
                          } else {
                            toTextEditingController.text = "";
                          }
                        },
                        decoration:
                            const InputDecoration(border: OutlineInputBorder()),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 35,
                        width: 1,
                        color: Colors.black,
                      ),
                    ),

                    /// Currency
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_drop_down),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: const SizedBox(),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            dropdownValue = value!;
                          });
                          convertCurrency();
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: SizedBox(
                              width:
                                  (MediaQuery.of(context).size.width / 2) - 50,
                              child: Text(
                                value,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
