import 'package:flutter/material.dart';

class UiText extends StatelessWidget {
  const UiText(
    this.data, {
    super.key,
    this.style,
  });
  final String data;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: style,
    );
  }
}
