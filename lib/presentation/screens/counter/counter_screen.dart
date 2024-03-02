import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  var _clickCounter = 0;

  String get _clicksText {
    return 'Click${_clickCounter == 1 ? '' : 's'}';
  }

  void _incrementCounter() {
    setState(() {
      _clickCounter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _clickCounter = 0;
    });
  }

  void _decreaseCounter() {
    setState(() {
      if (_clickCounter > 0) {
        _clickCounter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: _resetCounter,
            icon: const Icon(Icons.replay),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_clickCounter',
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              _clicksText,
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            shape: const CircleBorder(),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: _resetCounter,
            shape: const CircleBorder(),
            child: const Icon(Icons.replay),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: _decreaseCounter,
            shape: const CircleBorder(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
