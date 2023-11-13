import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => CounterWidgetState();
}

class CounterWidgetState extends State<CounterWidget> {
  var counter = 0;

  void increment() {
    setState(() {
      counter ++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        if (counter == 0)
          const Text(
            'Press the button',
            style: TextStyle(fontSize: 24),
          )
        else
          const Text(
            'You have pushed the button',
            style: TextStyle(fontSize: 24),
          ),
        Text(
          counter == 0 ? '' : counter == 1 ? '$counter time' : '$counter times',
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 50),
        ElevatedButton(onPressed: increment, child: const Icon(Icons.add))
      ],
    );
  }
}