import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:onboarding/onboarding.dart';

class Clinicians extends StatefulWidget {
  const Clinicians({Key? key}) : super(key: key);

  @override
  State<Clinicians> createState() => _CliniciansState();
}

class _CliniciansState extends State<Clinicians> {
  bool value = false;
  final int _counter = 2;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F7F5),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0.0),
                  child: IconButton(
                      onPressed: () {
                        context.go('/patient');
                      },
                      icon: const Icon(Icons.arrow_back)),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0.0),
                  child: Text(
                    'back',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff1C1F1E),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Spacer(),
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 0.0),
                    child: Image(
                      // height: 50,
                      image: AssetImage('assets/small_logo.png'),
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 5, 0),
                  child: Stack(
                    children: <Widget>[
                      const Icon(
                        size: 35,
                        Icons.notifications,
                        color: Color(0xffCDCFCE),
                      ),
                      _counter == 2
                          ? Positioned(
                              right: 0,
                              top: 0,
                              child: Container(
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.red),
                                constraints: const BoxConstraints(
                                  minHeight: 14,
                                  minWidth: 14,
                                ),
                                child: Text(
                                  '$_counter',
                                  style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Card(
                    margin: const EdgeInsets.fromLTRB(25, 15, 25, 25),
                    color: const Color(0xffffffff),
                    shadowColor: Colors.white,
                    elevation: 0.0,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffffffff), width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 12, 0.0),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/glass_doc.png'),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                'Dr. Floyd Miles',
                                style: TextStyle(
                                    color: Color(0xff1C1F1E),
                                    fontSize: 16,
                                    fontFamily: 'quicksand',
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Pediatrics ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'quicksand',
                                    fontSize: 14,
                                    height: 1.2,
                                    color: Color(0xffA7A6A5)),
                              ),
                              Text(
                                ' Vivamus varius odio non dui gravida ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'quicksand',
                                    fontSize: 12,
                                    height: 1.2,
                                    color: Color(0xffA7A6A5)),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Card(
                    margin: const EdgeInsets.fromLTRB(25, 15, 25, 25),
                    color: const Color(0xffffffff),
                    shadowColor: Colors.white,
                    elevation: 0.0,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffffffff), width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 12, 0.0),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/glass_doc.png'),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                'Dr. Floyd Miles',
                                style: TextStyle(
                                    color: Color(0xff1C1F1E),
                                    fontSize: 16,
                                    fontFamily: 'quicksand',
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Pediatrics ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'quicksand',
                                    fontSize: 14,
                                    height: 1.2,
                                    color: Color(0xffA7A6A5)),
                              ),
                              Text(
                                ' Vivamus varius odio non dui gravida ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'quicksand',
                                    fontSize: 12,
                                    height: 1.2,
                                    color: Color(0xffA7A6A5)),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Card(
                    margin: const EdgeInsets.fromLTRB(25, 15, 25, 25),
                    color: const Color(0xffffffff),
                    shadowColor: Colors.white,
                    elevation: 0.0,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffffffff), width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 12, 0.0),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/glass_doc.png'),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                'Dr. Floyd Miles',
                                style: TextStyle(
                                    color: Color(0xff1C1F1E),
                                    fontSize: 16,
                                    fontFamily: 'quicksand',
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Pediatrics ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'quicksand',
                                    fontSize: 14,
                                    height: 1.2,
                                    color: Color(0xffA7A6A5)),
                              ),
                              Text(
                                ' Vivamus varius odio non dui gravida ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'quicksand',
                                    fontSize: 12,
                                    height: 1.2,
                                    color: Color(0xffA7A6A5)),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Card(
                    margin: const EdgeInsets.fromLTRB(25, 15, 25, 25),
                    color: const Color(0xffffffff),
                    shadowColor: Colors.white,
                    elevation: 0.0,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffffffff), width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 12, 0.0),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/glass_doc.png'),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                'Dr. Floyd Miles',
                                style: TextStyle(
                                    color: Color(0xff1C1F1E),
                                    fontSize: 16,
                                    fontFamily: 'quicksand',
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Pediatrics ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'quicksand',
                                    fontSize: 14,
                                    height: 1.2,
                                    color: Color(0xffA7A6A5)),
                              ),
                              Text(
                                ' Vivamus varius odio non dui gravida ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'quicksand',
                                    fontSize: 12,
                                    height: 1.2,
                                    color: Color(0xffA7A6A5)),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
