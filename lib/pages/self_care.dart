import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:go_router/go_router.dart';

class SelfCareScreen extends StatefulWidget {
  const SelfCareScreen({Key? key}) : super(key: key);

  @override
  State<SelfCareScreen> createState() => _SelfCareScreenState();
}

class _SelfCareScreenState extends State<SelfCareScreen> {
  @override
  Widget build(BuildContext context) {
    const Text text = Text(
      'Self Care',
      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 28),
      textAlign: TextAlign.center,
    );
    const logo = Image(
      image: AssetImage('assets/pm_logo.png'),
    );
    final button = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF66CA98),
          minimumSize: const Size.fromHeight(50),
        ),
        onPressed: () {
          context.go('/get-started');
        },
        child: const Text('Get Started',
            style: TextStyle(fontSize: 20, color: Colors.white)),
      ),
    );

    List lists = [
      text,
      logo,
      const SizedBox(
        height: 155,
      ),
      button
    ];
    return SafeArea(
      child: Scaffold(
        body: AnimationLimiter(
          child: Center(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: lists.length,
              itemBuilder: (BuildContext content, int index) {
                return AnimationConfiguration.staggeredList(
                  position: index,
                  child: SlideAnimation(
                    verticalOffset: 50.0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                    child: lists[index],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
