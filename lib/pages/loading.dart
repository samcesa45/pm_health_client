import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:onboarding/onboarding.dart';
import 'package:pm_health_client/pages/self_care.dart';
import 'package:pm_health_client/pages/patient/subpages/patient_signin.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  late Material materialButton;
  late int index;

  Expanded get _signupButton {
    return Expanded(
        child: Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color(0xFF66CA98),
                  width: 1,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xFF66CA98),
            ),
            child: TextButton(
              onPressed: () {
                context.go('/get-started');
              },
              child: const Text('Get Started',
                  style: TextStyle(fontSize: 28, color: Colors.white)),
            ),
          )

          // ),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: onBoardingPage(),
    );
  }
}

class onBoardingPage extends StatefulWidget {
  const onBoardingPage({Key? key}) : super(key: key);

  @override
  State<onBoardingPage> createState() => _onBoardingPageState();
}

class _onBoardingPageState extends State<onBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const SelfCareScreen()),
    );
  }

  Widget _buildFullscreenImage() {
    return Image.asset(
      'assets/intro_doc.png',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset(
      'assets/$assetName',
      width: width,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28.0,
        fontWeight: FontWeight.w700,
      ),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,
      autoScrollDuration: 3000,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: _buildImage('small_logo.png', 100),
          ),
        ),
      ),
      // globalFooter: SizedBox(
      //   width: double.infinity,
      //   height: 60,
      //   child: ElevatedButton(
      //     child: const Text(
      //       'Let\'s go right away!',
      //       style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      //     ),
      //     onPressed: () => _onIntroEnd(context),
      //   ),
      // ),
      pages: [
        // PageViewModel(
        //     title: "",
        //     decoration: const PageDecoration(
        //       pageColor: Colors.red,
        //     ),
        //     bodyWidget: Scaffold(
        //       backgroundColor: Colors.red,
        //       body: Container(
        //         color: Colors.red,
        //         foregroundDecoration: const BoxDecoration(
        //           image:
        //               DecorationImage(image: AssetImage('assets/logo_big.png')),
        //         ),
        //       ),
        //     ),
        //     image: Image.asset('assets/logo_big.png')),
        PageViewModel(
          titleWidget: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                child: Text(
                  "Welcome!",
                  style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'quicksand',
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          bodyWidget: Column(
            children: const <Widget>[
              Text(
                "Gently place your finger at the bottom of your screen to test your pulse",
                style: TextStyle(
                    fontFamily: 'quicksand',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff4F4F4F)),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          image: Container(
              margin: const EdgeInsets.only(top: 50),
              child: Image.asset('assets/fingerprint.png')),
          // decoration: pageDecoration(),
        ),
        PageViewModel(
          titleWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  "Fast and reliable",
                  style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'quicksand',
                      color: Color(0xff333333),
                      fontWeight: FontWeight.w500),
                ),
              ),
              const Text(
                "pulse meter",
                style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'quicksand',
                    color: Color(0xffFF3C3C),
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          bodyWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                "Use our fast and reliable app to keep track of your heart rate",
                style: TextStyle(
                    fontFamily: 'quicksand',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff4F4F4F)),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          image: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 50),
              child: Image.asset('assets/heart.png')),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Keep track of your",
                  style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'quicksand',
                      color: Color(0xff333333),
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.left,
                ),
              ),
              Text(
                "water intake",
                style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'quicksand',
                    color: Color(0xffFF3C3C),
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          bodyWidget: Column(
            children: [
              Text(
                "Monitor your heart rate, to avoid a costly mistake",
                style: TextStyle(
                    fontFamily: 'quicksand',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff4F4F4F)),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          image: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Image.asset('assets/runner.png')),
          // decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color(0xff000000))),
      next: Stack(
        alignment: Alignment.center,
        children: const <Widget>[
          Image(
            image: AssetImage('assets/ellipse.png'),
          ),
          Image(
            image: AssetImage('assets/angle-right.png'),
          ),
        ],
      ),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFD9D9D9),
        activeSize: Size(22.0, 10.0),
        activeColor: Color(0xFF000000),
      ),
    );
  }
}
