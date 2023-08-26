import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  bool value = false;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Alert custom images
  _onAlertWithCustomImagePressed(context) {
    Alert(
        context: context,
        title: "Success",
        desc: "Your Appointment has been successfully saved.",
        image: Image.asset(
          "assets/icon_check.png",
          color: Colors.green,
        ),
        buttons: [
          DialogButton(
            onPressed: () {
              context.go('/patient');
            },
            child: Text(
              "Ok",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF4F6F5),
        body: SingleChildScrollView(
          child: Card(
            margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Container(
              width: 460,
              height: 960,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 30, horizontal: 5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(35))),
                      color: Color(0xFF5476EC),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 40, 0, 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: <Widget>[
                                IconButton(
                                    onPressed: () {
                                      context.go('/patient');
                                    },
                                    icon: const Icon(
                                      Icons.arrow_back_ios,
                                      color: Color(0xffffffff),
                                    )),
                                Text(
                                  'back',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Text(
                              'Thank you!',
                              style: TextStyle(
                                  color: Color(0xFFffffff),
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'quicksand'),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Image(
                              image: AssetImage('assets/icon_check.png'),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Your appointment has been successfully reserved, please endeavor to keep to time as scheduled by your doctor',
                              style: TextStyle(
                                  color: Color(0xFFffffff),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'quicksand'),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(16, 10, 0, 0.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/boy.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 16, 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'John Mark',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff1C1F1E),
                                  fontFamily: 'quicksand',
                                  fontSize: 16),
                            ),
                            Text(
                              'Patient',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffA7A6A5),
                                  fontFamily: 'quicksand',
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Date:',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  fontFamily: 'quicksand',
                                  color: Color(0xff1C1F1E)),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Text(
                              '26 March 2023',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  fontFamily: 'quicksand',
                                  color: Color(0xffA7A6A5)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Time:',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  fontFamily: 'quicksand',
                                  color: Color(0xff1C1F1E)),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Text(
                              '16:00',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  fontFamily: 'quicksand',
                                  color: Color(0xffA7A6A5)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8.0, horizontal: 0),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Location:',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  fontFamily: 'quicksand',
                                  color: Color(0xff1C1F1E)),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.location_on),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '3891 Ranchview ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          fontFamily: 'quicksand',
                                          color: Color(0xffA7A6A5)),
                                    ),
                                    Text(
                                      'Dr. Richardson,',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          fontFamily: 'quicksand',
                                          color: Color(0xffA7A6A5)),
                                    ),
                                    Text(
                                      'San Francisco 62639',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          fontFamily: 'quicksand',
                                          color: Color(0xffA7A6A5)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8.0, horizontal: 0),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 11,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.camera_alt_outlined),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Jane Crooner ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          fontFamily: 'quicksand',
                                          color: Color(0xffA7A6A5)),
                                    ),
                                    Text(
                                      'Medical Colledge',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          fontFamily: 'quicksand',
                                          color: Color(0xffA7A6A5)),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 70),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                const Color(0xFF5476EC),
                              ),
                              minimumSize: MaterialStateProperty.all(
                                  const Size.fromHeight(50)),
                              overlayColor:
                                  MaterialStateProperty.resolveWith<Color?>(
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
                              _onAlertWithCustomImagePressed(context);
                              // context.go('/patient');
                            },
                            child: const Text('Save',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
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
