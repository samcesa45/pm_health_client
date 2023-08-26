import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PatientDashBoard extends StatefulWidget {
  const PatientDashBoard({Key? key}) : super(key: key);

  @override
  State<PatientDashBoard> createState() => _PatientDashBoardState();
}

class _PatientDashBoardState extends State<PatientDashBoard> {
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
    return Scaffold(
        backgroundColor: const Color(0xffF4F7F5),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.fromLTRB(25, 40, 25, 0),
                      child: Text(
                        'Welcome Back, Mark!',
                        style: TextStyle(
                            fontSize: 28,
                            fontFamily: 'quicksand',
                            fontWeight: FontWeight.w600,
                            color: Color(0xff1C1F1E)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 40, 5, 0),
                      child: InkWell(
                        highlightColor: const Color(0xffCEBEBE),
                        splashColor: const Color(0xffCEBEBE),
                        onTap: () {},
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
                                          borderRadius:
                                              BorderRadius.circular(50),
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
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                      child: Row(
                        children: const <Widget>[
                          Icon(Icons.location_on),
                          Text(
                            'Manchester, England',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffA7A6A5)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                  width: 2, color: Color(0xffffffff)),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Search For Clinicians',
                            hintStyle: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xffCDCFCE)),
                            prefixIcon: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.search,
                                color: Color(0xffCDCFCE),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 7, 0.0),
                      child: Image(image: AssetImage('assets/icon_filter.png')),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 20, 25, 0),
                      child: DefaultTextStyle(
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'quicksand',
                            color: Color(0xff1C1F1E),
                          ),
                          child: Text('Clinician')),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 20, 25, 0),
                      child: DefaultTextStyle(
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'quicksand',
                            color: Color(0xff1C1F1E),
                          ),
                          child: Text('See all')),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        margin: const EdgeInsets.fromLTRB(10, 4, 10, 4),
                        color: const Color(0xff6295E2),
                        shadowColor: Colors.blueGrey,
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white, width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(14))),
                        child: InkWell(
                          splashColor: const Color(0xff1750A7),
                          highlightColor: const Color(0xff1750A7),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(14)),
                          onTap: () {},
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Row(
                                  children: <Widget>[
                                    const Padding(
                                      padding: EdgeInsets.only(right: 11.0),
                                      child: CircleAvatar(
                                        backgroundImage:
                                            AssetImage('assets/glass_doc.png'),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const <Widget>[
                                        Text(
                                          'Dr. Floyd Miles',
                                          style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          'cardiologist',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                              height: 1.5,
                                              color: Color(0xffE0EAF9)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 18.0, bottom: 18.0),
                                    child: Row(
                                      children: const <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/icon_calendar.png')),
                                        ),
                                        Text(
                                          'March 23',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Inter'),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 18.0, bottom: 18.0),
                                    child: Row(
                                      children: const <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/icon_time.png')),
                                        ),
                                        Text(
                                          '16:00',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Inter'),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        margin: const EdgeInsets.fromLTRB(10, 4, 10, 4),
                        color: const Color(0xffFF6C52),
                        shadowColor: Colors.blueGrey,
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white, width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(14))),
                        child: InkWell(
                          splashColor: const Color(0xffA4301B),
                          highlightColor: const Color(0xffA4301B),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(14)),
                          onTap: () {},
                          child: Column(
                            // mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(20),
                                child: Row(
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        const Text(
                                          'Blood test',
                                          style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 18,
                                              fontFamily: 'gilroy',
                                              fontWeight: FontWeight.w500),
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        Row(
                                          children: const <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(
                                                right: 8.0,
                                              ),
                                              child: Image(
                                                  image: AssetImage(
                                                      'assets/icon_calendar.png')),
                                            ),
                                            Text(
                                              '23 March',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  fontFamily: 'Inter',
                                                  color: Color(0xffF4F6F5)),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Expanded(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/group_blood_test.png'),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Category',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Card(
                            margin: const EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)),
                            elevation: 1,
                            color: Colors.white,
                            child: InkWell(
                              splashColor: const Color(0xffCEBEBE),
                              highlightColor: const Color(0xffCEBEBE),
                              borderRadius: BorderRadius.circular(14),
                              onTap: () {
                                context.go('/clinicians');
                              },
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Column(
                                      children: const <Widget>[
                                        Image(
                                          image: AssetImage(
                                              'assets/icon_heart_cat.png'),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Clinicians',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'quicksand',
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card(
                            margin: const EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)),
                            elevation: 1,
                            color: Color(0xffFFFFFF),
                            child: InkWell(
                              splashColor: Color(0xffCEBEBE),
                              highlightColor: Color(0xffCEBEBE),
                              borderRadius: BorderRadius.circular(14),
                              onTap: () {
                                context.go('/appointment');
                              },
                              child: Ink(
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(4),
                                      child: Column(
                                        children: <Widget>[
                                          Stack(
                                            children: const <Widget>[
                                              Image(
                                                image: AssetImage(
                                                    'assets/rec.png'),
                                                color: Color(0xffFF6C52),
                                              ),
                                              Positioned(
                                                top: 6,
                                                left: 8,
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/appointment_icon.png'),
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Appointment',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'quicksand',
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card(
                            margin: const EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)),
                            elevation: 1,
                            color: Colors.white,
                            child: InkWell(
                              splashColor: const Color(0xffCEBEBE),
                              highlightColor: const Color(0xffCEBEBE),
                              borderRadius: BorderRadius.circular(14),
                              onTap: () {
                                context.go('/monitor-heart');
                              },
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(4, 6, 4, 0),
                                    child: Stack(
                                      children: const <Widget>[
                                        Image(
                                          image: AssetImage(
                                              'assets/yellow_rect.png'),
                                        ),
                                        Positioned(
                                          top: 8,
                                          left: 6,
                                          child: Image(
                                            image: AssetImage(
                                                'assets/icon_airplane.png'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(4, 5, 4, 10),
                                    child: Text(
                                      'Monitor your heart',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'quicksand',
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              context.go('/medication');
                            },
                            child: Card(
                              margin: const EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14)),
                              elevation: 1,
                              color: Colors.white,
                              child: Column(
                                children: const <Widget>[
                                  Image(
                                      image: AssetImage(
                                          'assets/icon_meditation.png')),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card(
                            margin: const EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)),
                            elevation: 1,
                            color: Colors.white,
                            child: InkWell(
                              splashColor: const Color(0xffCEBEBE),
                              highlightColor: const Color(0xffCEBEBE),
                              borderRadius: BorderRadius.circular(14),
                              onTap: () {
                                context.go('/track-heart');
                              },
                              child: Column(
                                children: const <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(4, 6, 4, 10),
                                    child: Image(
                                        image: AssetImage(
                                            'assets/icon_track.png')),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(4, 5, 4, 10),
                                    child: Text(
                                      'Track your heart',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'quicksand',
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card(
                            margin: const EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)),
                            elevation: 0,
                            color: Colors.white,
                            child: InkWell(
                              splashColor: Color(0xffCEBEBE),
                              highlightColor: Color(0xffCEBEBE),
                              borderRadius: BorderRadius.circular(14),
                              onTap: () {
                                context.go('/schedule-appointment');
                              },
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(4, 6, 4, 10),
                                    child: Stack(
                                      children: const <Widget>[
                                        Image(
                                          image: AssetImage(
                                              'assets/schedule_rect.png'),
                                        ),
                                        Positioned(
                                          top: 8,
                                          left: 6,
                                          child: Image(
                                            image: AssetImage(
                                                'assets/icon_upload.png'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(4, 5, 4, 10),
                                    child: Text(
                                      'Schedule',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'quicksand',
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: const Color(0xffD9D9D9),
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
        ));
  }
}
