import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({super.key, required this.counter});

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineMedium,
            );
  }
}

@widgetbook.UseCase(
  name: 'Default',
  type: CounterDisplay,
)
CounterDisplay defaultCounterDisplay(BuildContext context) {
  return CounterDisplay(
    counter: context.knobs.int.slider(label: 'Counter value', initialValue: 0),
  );
}