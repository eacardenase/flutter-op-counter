import 'package:flutter/material.dart';
import 'package:op_counter/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const App());
}

final colorScheme = ColorScheme.fromSeed(seedColor: Colors.cyan);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        colorScheme: colorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: colorScheme.primaryContainer,
        ),
      ),
      home: const CounterScreen(),
    );
  }
}
