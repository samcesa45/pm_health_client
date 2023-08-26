import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MonitorHeart extends StatefulWidget {
  const MonitorHeart({Key? key}) : super(key: key);

  @override
  State<MonitorHeart> createState() => _MonitorHeartState();
}

class _MonitorHeartState extends State<MonitorHeart> {
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
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 10, 0, 0.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/boy.png'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 16, 0.0),
                    child: Image(image: AssetImage('assets/frame_circle.png')),
                  )
                ],
              ),
              Row(
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Track your heart',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: 'quicksand',
                          color: Color(0xff333333)),
                    ),
                  )
                ],
              ),
              Row(
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Monitoring Parameters',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 32,
                          fontFamily: 'quicksand',
                          color: Color(0xff333333)),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 0.0,
                      color: const Color(0xff1D1D1D),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: InkWell(
                        highlightColor: const Color(0xffA3A6AB),
                        splashColor: const Color(0xffA3A6AB),
                        hoverColor: const Color(0xffA3A6AB),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                        onTap: () {
                          context.go('/cholesterol');
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 30, 15, 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                                child: Text(
                                  ' Cholesterol',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'quicksand',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                                child: Text(
                                  ' 78 bmp',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'quicksand',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                                child: Image(
                                    image:
                                        AssetImage('assets/heart_monitor.png')),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                                    child: Text(
                                      ' Lowest',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'quicksand',
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(30, 0, 0, 8.0),
                                    child: Text(
                                      ' 20 bmp',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'quicksand',
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                                    child: Text(
                                      ' Highest',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'quicksand',
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(30, 0, 0, 8.0),
                                    child: Text(
                                      ' 278 bmp',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'quicksand',
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 0.0,
                      color: const Color(0xffF6BA83),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          side: BorderSide(width: 1, color: Color(0xffF6BA83))),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 30, 15, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                              child: Text(
                                'Exercise',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'quicksand',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                              child: Text(
                                ' 78 bmp',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'quicksand',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                              child: Image(
                                  image:
                                      AssetImage('assets/heart_monitor.png')),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                                  child: Text(
                                    ' Lowest',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'quicksand',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 0, 0, 8.0),
                                  child: Text(
                                    ' 20 bmp',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'quicksand',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                                  child: Text(
                                    ' Highest',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'quicksand',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 0, 0, 8.0),
                                  child: Text(
                                    ' 278 bmp',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'quicksand',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 0.0,
                      color: const Color(0xff7386FF),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        // side: BorderSide(width: 1, color: Color(0xff7386FF),)
                      ),
                      child: InkWell(
                        highlightColor: const Color(0xffA3A6AB),
                        splashColor: const Color(0xffA3A6AB),
                        hoverColor: const Color(0xffA3A6AB),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                        onTap: () {
                          context.go('/steps');
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 30, 15, 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                                child: Text(
                                  'Steps',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'quicksand',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                                child: Text(
                                  ' 78 bmp',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'quicksand',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                                child: Image(
                                    image:
                                        AssetImage('assets/heart_monitor.png')),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                                    child: Text(
                                      ' Lowest',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'quicksand',
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(30, 0, 0, 8.0),
                                    child: Text(
                                      ' 20 bmp',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'quicksand',
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                                    child: Text(
                                      ' Highest',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'quicksand',
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(30, 0, 0, 8.0),
                                    child: Text(
                                      ' 278 bmp',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'quicksand',
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 0,
                      color: const Color(0xff66CA98),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          side: BorderSide(width: 1, color: Color(0xff66CA98))),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 25, 15, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text(
                                'Oxygen',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'quicksand',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                              child: Text(
                                'Saturation',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'quicksand',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                              child: Text(
                                ' 78 bmp',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'quicksand',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                              child: Image(
                                  image:
                                      AssetImage('assets/heart_monitor.png')),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                                  child: Text(
                                    ' Lowest',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'quicksand',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(30, 0, 0, 8.0),
                                  child: Text(
                                    ' 20 bmp',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'quicksand',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                                  child: Text(
                                    ' Highest',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'quicksand',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(30, 0, 0, 8.0),
                                  child: Text(
                                    ' 278 bmp',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'quicksand',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(25, 18, 0, 0.0),
                    child: Text(
                      'Goals',
                      style: TextStyle(
                          color: Color(0xff061428),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'quicksand'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 18, 25.0, 0),
                    child: Text(
                      'see all',
                      style: TextStyle(
                          color: Color(0xff2F80ED),
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          fontFamily: 'quicksand'),
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
                      elevation: 2.0,
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xffE0E0E0), width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 12, 0.0),
                              child: Image(
                                image: AssetImage('assets/girl_run.png'),
                              ),
                            ),
                            Column(
                              children: const <Widget>[
                                Text(
                                  'Running',
                                  style: TextStyle(
                                      color: Color(0xff282828),
                                      fontSize: 16,
                                      fontFamily: 'quicksand',
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Complete',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'quicksand',
                                      fontSize: 13,
                                      height: 1.5,
                                      color: Color(0xff66CA98)),
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
              )
            ],
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
