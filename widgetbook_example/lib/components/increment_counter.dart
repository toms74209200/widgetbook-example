import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class IncrementCounter extends StatelessWidget {
  const IncrementCounter({super.key, this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}

@widgetbook.UseCase(
  name: 'Default',
  type: IncrementCounter,
)
IncrementCounter defalautIncrementCounter(BuildContext context) {
  return IncrementCounter(
    onPressed: () {},
  );
}