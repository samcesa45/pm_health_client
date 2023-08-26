import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TrackHeart extends StatefulWidget {
  const TrackHeart({Key? key}) : super(key: key);

  @override
  State<TrackHeart> createState() => _TrackHeartState();
}

class _TrackHeartState extends State<TrackHeart> {
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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(21, 0, 21, 0.0),
                      child: IconButton(
                          onPressed: () {
                            context.go('/patient');
                          },
                          icon: const Icon(Icons.arrow_back_ios)),
                    ),
                    const Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 21, 0.0),
                        child:
                            Image(image: AssetImage('assets/icon_person.png')))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 10, 0, 0.0),
                      child: Text(
                        'Heart Rate',
                        style: TextStyle(
                            color: Color(0xff1C1C1C),
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 14.55, left: 19.26),
                      child: Text(
                        'Rest Heart Rate Average',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff2A2AC0)),
                      ),
                    )
                  ],
                ),
                Row(
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(19.76, 9.35, 0.0, 0),
                      child: Text(
                        '61 Bpm',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            color: Color(0xff1C1C1C)),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(19.76, 15.35, 0, 19.75),
                      child: Text('May 2019 - May 2020',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xff1C1C1C))),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image(image: AssetImage('assets/small_logo.png')),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 21),
                        elevation: 0.0,
                        color: const Color(0xffDCE5F4),
                        shape: const RoundedRectangleBorder(

                            // side: BorderSide(width: 1, color: Color(0xffDCE5F4),)
                            ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const <Widget>[
                              Text(
                                'D',
                                style: TextStyle(
                                    color: Color(0xff1C1C1C),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                              Text(
                                'W',
                                style: TextStyle(
                                    color: Color(0xff1C1C1C),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                              Text(
                                'M',
                                style: TextStyle(
                                    color: Color(0xff1C1C1C),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                              Text(
                                'Y',
                                style: TextStyle(
                                    color: Color(0xff1C1C1C),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
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
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 19.86, right: 19.86),
                        child:
                            Image(image: AssetImage('assets/statistics.png')),
                      ),
                    )
                  ],
                )
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
