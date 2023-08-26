import 'package:flutter/material.dart';

class Time extends StatefulWidget {
  const Time({Key? key}) : super(key: key);

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  final _timeC = TextEditingController();

  ///Date
  DateTime selected = DateTime.now();
  DateTime initial = DateTime(2000);
  DateTime last = DateTime(2025);

  ///Time
  TimeOfDay timeOfDay = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Column(
        children: [
          TextFormField(
            controller: _timeC,
            decoration: const InputDecoration(
                labelText: 'Time picker', border: OutlineInputBorder()),
          ),
          ElevatedButton(
              onPressed: () => displayTimePicker(context),
              child: const Text('Pick Time'))
        ],
      ),
    );
  }

  Future displayTimePicker(BuildContext context) async {
    var time = await showTimePicker(context: context, initialTime: timeOfDay);

    if (time != null) {
      setState(() {
        _timeC.text = "{time.hour}:${time.minute}";
      });
    }
  }
}
