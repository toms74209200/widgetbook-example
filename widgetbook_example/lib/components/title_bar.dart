import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class TitleBar extends StatelessWidget {
  const TitleBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(title),
    );
  }
}

@widgetbook.UseCase(
  name: 'Default',
  type: TitleBar,
)
TitleBar defaultTitleBar(BuildContext context) {
  return TitleBar(
    title: context.knobs.string(label: 'Title', initialValue: 'Title'),
  );
}