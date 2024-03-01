import 'package:flutter/material.dart';
import 'package:op_counter/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
