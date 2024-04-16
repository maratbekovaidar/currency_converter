import 'package:currency_converter/common/const/currency_abbreviations.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Currency convertor"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          /// Texts
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1 Kazakhstani Tenge equals",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Text(
                "0.0022 United States Dollar",
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.black,
                ),
              ),
              Text(
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
                  const Flexible(
                    flex: 1,
                    child: Expanded(
                      child: TextField(
                        decoration:
                            InputDecoration(border: OutlineInputBorder()),
                      ),
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
                      },
                      items:
                          select.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: SizedBox(
                              width:
                                  (MediaQuery.of(context).size.width / 2) - 50,
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
                  const Flexible(
                    flex: 1,
                    child: Expanded(
                      child: TextField(
                        decoration:
                            InputDecoration(border: OutlineInputBorder()),
                      ),
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
                      },
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: SizedBox(
                            width: (MediaQuery.of(context).size.width / 2) - 50,
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
    );
  }
}
