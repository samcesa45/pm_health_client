import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthCode extends StatefulWidget {
  const AuthCode({Key? key}) : super(key: key);

  @override
  State<AuthCode> createState() => _AuthCodeState();
}

class _AuthCodeState extends State<AuthCode> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF4F6F5),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 70.0),
                    child: Image(image: AssetImage('assets/small_logo.png')),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Your Code',
                      style: TextStyle(
                          fontFamily: 'gilroy',
                          color: Color(0xff1C1F1E),
                          fontSize: 28,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 42.0),
                    child: Text(
                      'Code sent to your Email',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          color: Color(0xffA7A6A5),
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  SizedBox(
                      width: 79,
                      height: 79,
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              gapPadding: 4.0,
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xffEFF2F1))),
                          hintText: '1',
                          hintStyle: TextStyle(
                              fontSize: 28,
                              color: Color(0xff1C1F1E),
                              fontWeight: FontWeight.w400),
                          fillColor: Color(0xffEFF2F1),
                        ),
                      )),
                  SizedBox(
                      width: 79,
                      height: 79,
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              gapPadding: 4.0,
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xffEFF2F1))),
                          hintText: '4',
                          hintStyle: TextStyle(
                              fontSize: 28,
                              color: Color(0xff1C1F1E),
                              fontWeight: FontWeight.w400),
                          fillColor: Color(0xffEFF2F1),
                        ),
                      )),
                  SizedBox(
                      width: 79,
                      height: 79,
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              gapPadding: 4.0,
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xffEFF2F1))),
                          hintText: '2',
                          hintStyle: TextStyle(
                              fontSize: 28,
                              color: Color(0xff1C1F1E),
                              fontWeight: FontWeight.w400),
                          fillColor: Color(0xffEFF2F1),
                        ),
                      )),
                  SizedBox(
                      width: 79,
                      height: 79,
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              gapPadding: 4.0,
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xffEFF2F1))),
                          hintText: '7',
                          hintStyle: TextStyle(
                              fontSize: 28,
                              color: Color(0xff1C1F1E),
                              fontWeight: FontWeight.w400),
                          fillColor: Color(0xffEFF2F1),
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    '(21:23)',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1C1F1E)),
                  ),
                  Text(
                    'Resend Code?',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffA7A6A5)),
                  ),
                  Text(
                    'Click here',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff66CA98),
                        fontFamily: 'Inter'),
                  )
                ],
              ),
              const SizedBox(
                height: 109,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 17),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    backgroundColor: const Color(0xFF66CA98),
                    minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: () {
                    context.go('/sign-carer');
                  },
                  child: const Text('Verify',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
