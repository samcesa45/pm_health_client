import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CarerDashBoard extends StatefulWidget {
  const CarerDashBoard({Key? key}) : super(key: key);

  @override
  State<CarerDashBoard> createState() => _CarerDashBoardState();
}

class _CarerDashBoardState extends State<CarerDashBoard> {
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
                padding: const EdgeInsets.fromLTRB(18.11, 20, 0, 31),
                child: Column(
                  children: <Widget>[
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
              height: 19,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Card(
                    margin: const EdgeInsets.fromLTRB(18.0, 19, 18, 22.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: const Color(0xff5E8CE5),
                    child: InkWell(
                      highlightColor: const Color(0xFFE1E1E1),
                      splashColor: const Color(0xffE1E1E1),
                      onTap: () {
                        context.go('/routine-care');
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(34.0, 12, 23, 16),
                        child: Row(
                          children: const <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child:
                                  Image(image: AssetImage('assets/dots.png')),
                            ),
                            Text(
                              'Routine Care',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'quicksand'),
                            ),
                            Spacer(),
                            Image(image: AssetImage('assets/icon_arrow.png')),
                            Image(image: AssetImage('assets/icon_arrow.png'))
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Card(
                    margin: const EdgeInsets.fromLTRB(18.0, 19, 18, 22.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: const Color(0xff66CA98),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(34.0, 12, 23, 16),
                      child: Row(
                        children: const <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Image(image: AssetImage('assets/dots.png')),
                          ),
                          Text(
                            'Check Patients Dashboard',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'quicksand'),
                          ),
                          Spacer(),
                          Image(image: AssetImage('assets/icon_arrow.png')),
                          Image(image: AssetImage('assets/icon_arrow.png'))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Card(
                    margin: const EdgeInsets.fromLTRB(18.0, 19, 18, 22.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: const Color(0xff5E8CE5),
                    child: InkWell(
                      onTap: () {
                        context.go('/carer-patient');
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(34.0, 12, 23, 16),
                        child: Row(
                          children: const <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child:
                                  Image(image: AssetImage('assets/dots.png')),
                            ),
                            Text(
                              'See Assigned Patients',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'quicksand'),
                            ),
                            Spacer(),
                            Image(image: AssetImage('assets/icon_arrow.png')),
                            Image(image: AssetImage('assets/icon_arrow.png'))
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Card(
                    margin: const EdgeInsets.fromLTRB(18.0, 19, 18, 22.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: const Color(0xff66CA98),
                    child: InkWell(
                      onTap: () {
                        context.go('/refer-clinician');
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(34.0, 12, 23, 16),
                        child: Row(
                          children: const <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child:
                                  Image(image: AssetImage('assets/dots.png')),
                            ),
                            Text(
                              'Refer a Clinician',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'quicksand'),
                            ),
                            Spacer(),
                            Image(image: AssetImage('assets/icon_arrow.png')),
                            Image(image: AssetImage('assets/icon_arrow.png'))
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 55,
            ),
            Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(
                    'Checkup time',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontFamily: 'quicksand',
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                SizedBox(
                    width: 83,
                    height: 42,
                    child: TextField(
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            gapPadding: 10.0,
                            borderSide: BorderSide.none),
                        hintText: '9:9',
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Color(0xffA7A6A5),
                            fontWeight: FontWeight.w500),
                        filled: true,
                        fillColor: Color(0xffEFF2F1),
                      ),
                    )),
                SizedBox(
                    width: 83,
                    height: 42,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            gapPadding: 4.0,
                            borderSide: BorderSide.none),
                        hintText: '1:9',
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Color(0xff1C1F1E),
                            fontWeight: FontWeight.w500),
                        filled: true,
                        fillColor: Color(0xffffffff),
                      ),
                    )),
                SizedBox(
                    width: 83,
                    height: 42,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            gapPadding: 4.0,
                            borderSide: BorderSide.none),
                        hintText: '13:00',
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w500),
                        filled: true,
                        fillColor: Color(0xff66CA98),
                      ),
                    )),
                SizedBox(
                    width: 83,
                    height: 42,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            gapPadding: 4.0,
                            borderSide: BorderSide.none),
                        hintText: '16:00',
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Color(0xff1C1F1E),
                            fontWeight: FontWeight.w500),
                        filled: true,
                        fillColor: Color(0xffffffff),
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 94,
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
