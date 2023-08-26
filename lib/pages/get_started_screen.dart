import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(0, 22, 0, 0),
            decoration: const BoxDecoration(
              color: Color(0xffF4F6F5),
              image: DecorationImage(
                  image: AssetImage('assets/doctor_stand.png'),
                  fit: BoxFit.fitHeight),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Align(
                    alignment: Alignment.topCenter,
                    child: DefaultTextStyle(
                      style: TextStyle(
                        fontFamily: 'quicksand',
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff1C1F1E),
                      ),
                      child: Text(
                        'Let\'s Get Acquainted',
                      ),
                    )),
                Card(
                  margin: const EdgeInsets.all(40),
                  color: const Color(0xffffffff),
                  shadowColor: Colors.blueGrey,
                  elevation: 1.0,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      InkWell(
                        highlightColor: const Color(0xffD9D7D7),
                        splashColor: const Color(0xffD9D7D7),
                        borderRadius: BorderRadius.circular(15),
                        onTap: () {
                          context.go('/signup');
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: ListTile(
                            leading: Image(
                              image: AssetImage('assets/Icon_patient.png'),
                            ),
                            title: Text(
                              'I\'m a Patient',
                              style: TextStyle(
                                  color: Color(0xff66CA98),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                            subtitle: Text(
                              'Click to register as a Patient',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  height: 1.5,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.fromLTRB(40, 5, 40, 10),
                  color: const Color(0xffB8E1FF),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 1.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      InkWell(
                        highlightColor: const Color(0xffD9D7D7),
                        splashColor: const Color(0xffD9D7D7),
                        borderRadius: BorderRadius.circular(15),
                        onTap: () {
                          context.go('/doctor-profile');
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: ListTile(
                            leading: Image(
                              image: AssetImage('assets/icon_doctor.png'),
                            ),
                            title: Text(
                              'I\m a doctor',
                              style: TextStyle(color: Color(0xff000000)),
                            ),
                            subtitle: Text(
                              'Click to register as a Clinician',
                              style: TextStyle(color: Color(0xff000000)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(40),
                  elevation: 1.0,
                  color: const Color(0xffFFCCCC),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        highlightColor: const Color(0xffD9D7D7),
                        splashColor: const Color(0xffD9D7D7),
                        borderRadius: BorderRadius.circular(15),
                        onTap: () {
                          context.go('/carer-profile');
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: ListTile(
                            leading: Image(
                              image: AssetImage('assets/Icon_carer.png'),
                            ),
                            title: Text(
                              'I’m a Carer',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'quicksand',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            subtitle: Text(
                              'Click here to register as a Carer',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'quicksand',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.all(10),
                    child: DefaultTextStyle(
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'quicksands',
                        fontWeight: FontWeight.w600,
                        color: Color(0xff66CA98),
                      ),
                      child: Text(
                        'Already have an Account? Log in',
                      ),
                    )),
                DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(16, 10, 16, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF66CA98),
                          minimumSize: const Size.fromHeight(50),
                        ),
                        onPressed: () {
                          // context.go('/signup');
                        },
                        child: const Text('Get Started',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
