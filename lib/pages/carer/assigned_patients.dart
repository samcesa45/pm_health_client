import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:go_router/go_router.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AssignedPatient extends StatefulWidget {
  const AssignedPatient({Key? key}) : super(key: key);

  @override
  State<AssignedPatient> createState() => _AssignedPatientState();
}

class _AssignedPatientState extends State<AssignedPatient> {
  final int _counter = 2;
  bool value = false;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF4F6F5),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Card(
              // color: const Color(0xffffffff),
              // margin: const EdgeInsets.fromLTRB(18.11, 96.1, 0, 0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18.11, 0, 0, 31),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: <Widget>[
                          GestureDetector(
                              onTap: () {
                                context.go('/carer-dashboard');
                              },
                              child: const Icon(Icons.arrow_back_ios)),
                          const Text(
                            'Back',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff1C1F1E),
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: Stack(
                                children: <Widget>[
                                  const Image(
                                    image:
                                        AssetImage('assets/carer_dash_img.png'),
                                  ),
                                  Positioned(
                                    left: -4,
                                    bottom: -4,
                                    child: Card(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            4, 5.0, 5, 4.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: const <Widget>[
                                            Icon(
                                              Icons.star,
                                              color: Color(0xffF4A3EC),
                                            ),
                                            Text(
                                              '4.8',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: const <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 64.0),
                                  child: Text(
                                    'Annabel Jameson',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'quicksand',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff1C1F1E)),
                                  ),
                                ),
                                Icon(Icons.more_vert)
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  'Carer',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffA7A6A5)),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(right: 14.0),
                                      child: Image(
                                        image:
                                            AssetImage('assets/icon_chats.png'),
                                      ),
                                    ),
                                    Image(
                                      image:
                                          AssetImage('assets/icon_phones.png'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 63.0),
                                      child: Image(
                                        image:
                                            AssetImage('assets/small_logo.png'),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 33,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Card(
                    margin: const EdgeInsets.fromLTRB(25, 15, 25, 10),
                    color: const Color(0xffffffff),
                    shadowColor: Colors.white,
                    elevation: 0.0,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffffffff), width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 12, 0.0),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/patient1.png'),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    'Floyed Miles',
                                    style: TextStyle(
                                        color: Color(0xff1C1F1E),
                                        fontSize: 16,
                                        fontFamily: 'quicksand',
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Patient',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'quicksand',
                                        fontSize: 14,
                                        height: 1.2,
                                        color: Color(0xffA7A6A5)),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      const Text(
                                        '(123 reviews)',
                                        style: TextStyle(
                                            color: Color(0xffCDCFCE),
                                            fontSize: 12,
                                            fontFamily: 'Inter'),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffF4A3EC),
                                      ),
                                      const Text(
                                        '49',
                                        style: TextStyle(
                                            color: Color(0xff1C1F1E),
                                            fontSize: 14,
                                            fontFamily: 'Inter'),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Card(
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(11)),
                                        color: Color(0xff66CA98),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15.0, vertical: 5),
                                          child: Text(
                                            'Check Dashboard',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 8,
                                                fontFamily: 'Quicksand'),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
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
                    margin: const EdgeInsets.fromLTRB(25, 15, 25, 10),
                    color: const Color(0xffffffff),
                    shadowColor: Colors.white,
                    elevation: 0.0,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffffffff), width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 12, 0.0),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage('assets/boy.png'),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    'Bright James',
                                    style: TextStyle(
                                        color: Color(0xff1C1F1E),
                                        fontSize: 16,
                                        fontFamily: 'quicksand',
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Patient',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'quicksand',
                                        fontSize: 14,
                                        height: 1.2,
                                        color: Color(0xffA7A6A5)),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      const Text(
                                        '(123 reviews)',
                                        style: TextStyle(
                                            color: Color(0xffCDCFCE),
                                            fontSize: 12,
                                            fontFamily: 'Inter'),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffF4A3EC),
                                      ),
                                      const Text(
                                        '49',
                                        style: TextStyle(
                                            color: Color(0xff1C1F1E),
                                            fontSize: 14,
                                            fontFamily: 'Inter'),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Card(
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(11)),
                                        color: Color(0xff66CA98),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15.0, vertical: 5),
                                          child: Text(
                                            'Check Dashboard',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 8,
                                                fontFamily: 'Quicksand'),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
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
                    margin: const EdgeInsets.fromLTRB(25, 15, 25, 10),
                    color: const Color(0xffffffff),
                    shadowColor: Colors.white,
                    elevation: 0.0,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffffffff), width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 12, 0.0),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/profile_img.jpg'),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    'Kelechi Nwoke',
                                    style: TextStyle(
                                        color: Color(0xff1C1F1E),
                                        fontSize: 16,
                                        fontFamily: 'quicksand',
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Patient',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'quicksand',
                                        fontSize: 14,
                                        height: 1.2,
                                        color: Color(0xffA7A6A5)),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      const Text(
                                        '(123 reviews)',
                                        style: TextStyle(
                                            color: Color(0xffCDCFCE),
                                            fontSize: 12,
                                            fontFamily: 'Inter'),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffF4A3EC),
                                      ),
                                      const Text(
                                        '49',
                                        style: TextStyle(
                                            color: Color(0xff1C1F1E),
                                            fontSize: 14,
                                            fontFamily: 'Inter'),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Card(
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(11)),
                                        color: Color(0xff66CA98),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15.0, vertical: 5),
                                          child: Text(
                                            'Check Dashboard',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 8,
                                                fontFamily: 'Quicksand'),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
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
                    margin: const EdgeInsets.fromLTRB(25, 15, 25, 10),
                    color: const Color(0xffffffff),
                    shadowColor: Colors.white,
                    elevation: 0.0,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffffffff), width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 12, 0.0),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/profile.jpeg'),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    'Dareen keeps',
                                    style: TextStyle(
                                        color: Color(0xff1C1F1E),
                                        fontSize: 16,
                                        fontFamily: 'quicksand',
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Patient',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'quicksand',
                                        fontSize: 14,
                                        height: 1.2,
                                        color: Color(0xffA7A6A5)),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Column(
                                children: <Widget>[
                                  Row(
                                    children: const <Widget>[
                                      Text(
                                        '(123 reviews)',
                                        style: TextStyle(
                                            color: Color(0xffCDCFCE),
                                            fontSize: 12,
                                            fontFamily: 'Inter'),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffF4A3EC),
                                      ),
                                      Text(
                                        '49',
                                        style: TextStyle(
                                            color: Color(0xff1C1F1E),
                                            fontSize: 14,
                                            fontFamily: 'Inter'),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Card(
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(11)),
                                        color: const Color(0xff66CA98),
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15.0, vertical: 5),
                                          child: Text(
                                            'Check Dashboard',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 8,
                                                fontFamily: 'Quicksand'),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
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
                    margin: const EdgeInsets.fromLTRB(25, 15, 25, 10),
                    color: const Color(0xffffffff),
                    shadowColor: Colors.white,
                    elevation: 0.0,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffffffff), width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 12, 0.0),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/patient1.png'),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    'John Mark',
                                    style: TextStyle(
                                        color: Color(0xff1C1F1E),
                                        fontSize: 16,
                                        fontFamily: 'quicksand',
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Patient',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'quicksand',
                                        fontSize: 14,
                                        height: 1.2,
                                        color: Color(0xffA7A6A5)),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Column(
                                children: <Widget>[
                                  Row(
                                    children: const <Widget>[
                                      Text(
                                        '(123 reviews)',
                                        style: TextStyle(
                                            color: Color(0xffCDCFCE),
                                            fontSize: 12,
                                            fontFamily: 'Inter'),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffF4A3EC),
                                      ),
                                      Text(
                                        '49',
                                        style: TextStyle(
                                            color: Color(0xff1C1F1E),
                                            fontSize: 14,
                                            fontFamily: 'Inter'),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Card(
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(11)),
                                        color: Color(0xff66CA98),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15.0, vertical: 5),
                                          child: Text(
                                            'Check Dashboard',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 8,
                                                fontFamily: 'Quicksand'),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 95,
            ),
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: const Color(0xffffffff),
          selectedItemColor: const Color(0xff760000),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.blueAccent),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.call, color: Color(0xff66CA98)),
                label: 'Calls'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.video_camera_back_rounded,
                  color: Color(0xffF56B6B),
                ),
                label: 'video'),
            BottomNavigationBarItem(
                icon: Icon(Icons.mode_comment, color: Color(0xffE2C35B)),
                label: 'chat'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.drive_folder_upload_outlined,
                  color: Color(0xffC7A1E6),
                ),
                label: 'Calls'),
          ],
        ),
      ),
    );
  }
}
