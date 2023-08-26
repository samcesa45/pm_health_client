import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DoctorSignIn extends StatefulWidget {
  const DoctorSignIn({Key? key}) : super(key: key);

  @override
  State<DoctorSignIn> createState() => _DoctorSignInState();
}

class _DoctorSignInState extends State<DoctorSignIn> {
  final _formKey = GlobalKey<FormState>();
  //Initially password is obscure
  bool _obscureText = true;
  late String _password;

  //Toggles the password to show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Image(
                image: AssetImage('assets/small_logo.png'),
              ),
            ),
            const DefaultTextStyle(
              style: TextStyle(
                  color: Color(0xff1C1F1E),
                  fontFamily: 'quicksand',
                  fontWeight: FontWeight.w700,
                  fontSize: 28),
              child: Text('Sign In as a '),
            ),
            const DefaultTextStyle(
              style: TextStyle(
                  color: Color(0xff3E91CD),
                  fontWeight: FontWeight.w700,
                  fontFamily: 'quicksand',
                  fontSize: 28),
              child: Text(
                'CLINICIAN',
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 60, 16, 0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Email',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                          color: Color(0xffA7A6A5)),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      style: const TextStyle(
                          color: Color(0xffCDCFCE),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          filled: true,
                          focusColor: Color(0xff66CA98),
                          fillColor: Color(0xffEFF2F1),
                          enabledBorder: OutlineInputBorder(
                            gapPadding: 0,
                            borderSide: BorderSide.none,
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          hintStyle: TextStyle(
                              fontFamily: 'Inter',
                              color: Color(0xffCDCFCE),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          hintText: 'carer@self.com'),
                      //The Validator recieves the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                    const Text(
                      'Password',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                          color: Color(0xffA7A6A5)),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      style: const TextStyle(
                          color: Color(0xffCDCFCE),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          filled: true,
                          focusColor: Color(0xff66CA98),
                          fillColor: Color(0xffEFF2F1),
                          enabledBorder: OutlineInputBorder(
                            gapPadding: 0,
                            borderSide: BorderSide.none,
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          hintStyle: TextStyle(
                              fontFamily: 'Inter',
                              color: Color(0xffCDCFCE),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          hintText: 'Min of 8 characters'),
                      //The Validator recieves the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'forgot your password?',
                        // textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Color(0xff66CA98),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: TextButton(
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18)),
                              backgroundColor: const Color(0xff66CA98),
                              minimumSize: const Size.fromHeight(50)),
                          onPressed: () {
                            context.go('/doctor-dashboard');
                          },
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Dont Have an account ?',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              color: Color(0xffA7A6A5),
                              fontSize: 14),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Signup',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  color: Color(0xff66CA98),
                                  fontSize: 14),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
