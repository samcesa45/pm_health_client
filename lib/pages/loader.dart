import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pm_health_client/pages/loading.dart';

class Loader extends StatefulWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  double radius = 50.0;
  double topWidgetHeight = 100;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            const Image(image: AssetImage('assets/intro_doc.png')),
            const Positioned(
              top: 10,
              child: Image(image: AssetImage('assets/intro_doc_rec.png')),
            ),
            Positioned(
              right: MediaQuery.of(context).size.width / 2 - 50.0,
              top: topWidgetHeight - radius,
              child: const Image(
                image: AssetImage('assets/pm_logo.png'),
              ),
            ),
            Positioned(
              right: MediaQuery.of(context).size.width / 2 - 140,
              bottom: topWidgetHeight - radius,
              child: Padding(
                padding: const EdgeInsets.all(35.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xFF760000),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        // Change your radius here
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15.0)),
                    // minimumSize: MaterialStateProperty.all(const Size.fromHeight(50)),
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.green;
                      }

                      return null;
                    }),
                    // backgroundColor: const Color(0xFF66CA98),
                    // minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: () {
                    // context.go('/intro-screen');
                    Navigator.of(context).push(_createRoute());
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'quicksand',
                        fontWeight: FontWeight.w700,
                        color: Color(0xffFFFCFC)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Loading(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset(0.0, 0.0);
        const curve = Curves.easeIn;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      });
}
