import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CheckPatient extends StatefulWidget {
  const CheckPatient({Key? key}) : super(key: key);

  @override
  State<CheckPatient> createState() => _CheckPatientState();
}

class _CheckPatientState extends State<CheckPatient> {
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
      backgroundColor: const Color(0xffF4F6F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 24, 0, 0.0),
                    child: GestureDetector(
                        onTap: () {
                          context.go('/doctor-dashboard');
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 24, 0, 0.0),
                    child: Text(
                      'Back',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff1C1F1E),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 16, 0),
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
                  ),
                ],
              ),
              Row(
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: Text(
                      'Patient Assigned',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'quicksand',
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1C1F1E)),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                      child: Image(image: AssetImage('assets/small_logo.png'))),
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
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 10),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide.none,
                          ),
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Example “heart”',
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 13),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        color: const Color(0xffEFF2F1),
                        width: 74,
                        height: 26,
                        child: Stack(
                          children: const [
                            Positioned(
                              top: 5,
                              left: 17,
                              child: Text(
                                '#heart',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xffA7A6A5),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'quicksand'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        color: const Color(0xffEFF2F1),
                        width: 74,
                        height: 26,
                        child: Stack(
                          children: const [
                            Positioned(
                              top: 5,
                              left: 17,
                              child: Text(
                                '#teeth',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xffA7A6A5),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'quicksand'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        color: const Color(0xffEFF2F1),
                        width: 74,
                        height: 26,
                        child: Stack(
                          children: const [
                            Positioned(
                              top: 5,
                              left: 17,
                              child: Text(
                                '#surgeon',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xffA7A6A5),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'quicksand'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        color: const Color(0xffEFF2F1),
                        width: 74,
                        height: 26,
                        child: Stack(
                          children: const [
                            Positioned(
                              top: 5,
                              left: 17,
                              child: Text(
                                '#eyes',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xffA7A6A5),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'quicksand'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Container(
                        color: Colors.white,
                        width: 110,
                        height: 98,
                        child: Stack(
                          children: const [
                            Positioned(
                              top: 15,
                              left: 33,
                              right: 33,
                              bottom: 40,
                              child: Image(
                                image: AssetImage('assets/icon_pink_heart.png'),
                              ),
                            ),
                            Positioned(
                              top: 68,
                              left: 20,
                              child: Text(
                                'Cardiologist',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff1C1F1E),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'quicksand'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Container(
                        color: Colors.white,
                        width: 110,
                        height: 98,
                        child: Stack(
                          children: const [
                            Positioned(
                              top: 15,
                              left: 33,
                              right: 33,
                              bottom: 40,
                              child: Image(
                                image: AssetImage('assets/icon_eye.png'),
                              ),
                            ),
                            Positioned(
                              top: 68,
                              left: 32,
                              child: Text(
                                'Exercise',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff1C1F1E),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'quicksand'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Container(
                        color: Colors.white,
                        width: 110,
                        height: 98,
                        child: Stack(
                          children: const [
                            Positioned(
                              top: 15,
                              left: 33,
                              right: 33,
                              bottom: 40,
                              child: Image(
                                image: AssetImage('assets/icon_tooth.png'),
                              ),
                            ),
                            Positioned(
                              top: 68,
                              left: 32,
                              child: Text(
                                'Dentist',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff1C1F1E),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'quicksand'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 26, top: 29),
                    child: Text(
                      'All',
                      style: TextStyle(
                          fontFamily: 'quicksand',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1C1F1E)),
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
                                      'Floyd Miles',
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
                                        AssetImage('assets/boy.png'),
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: const Color(0xffffffff),
        selectedItemColor: const Color(0xff760000),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.blueAccent), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.call, color: Color(0xff66CA98)), label: 'Calls'),
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
    );
  }
}
