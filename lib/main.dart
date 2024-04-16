import 'package:currency_converter/src/converter/presentation/cubit/currency_converter_cubit.dart';
import 'package:currency_converter/src/converter/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Currency convertor",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          body: BlocProvider(
              create: (BuildContext context) => CurrencyConverterCubit(),
              child: const HomeScreen()),
        ));
  }
}
