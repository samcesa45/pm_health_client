import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({Key? key}) : super(key: key);

  @override
  State<SwitchWidget> createState() => _SwitchState();
}

class _SwitchState extends State<SwitchWidget> {
  late bool light = true;
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: light,
        activeColor: const Color(0xff19603D),
        onChanged: (bool value) {
          setState(() {
            light = value;
          });
        });
  }
}
