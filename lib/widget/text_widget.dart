import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final List<String> texts;
  final TextStyle? style;
  const TextWidget({Key? key, required this.texts, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: texts.map((text) => MyText(text: text, style: style)).toList(),
    );
  }
}

class MyText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  const MyText({Key? key, required this.text, this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style);
  }
}
