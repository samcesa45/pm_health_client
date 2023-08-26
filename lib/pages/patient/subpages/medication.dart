import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:pm_health_client/models/table_model.dart';
import 'package:pm_health_client/widget/switch.dart';

class Medication extends StatefulWidget {
  const Medication({Key? key}) : super(key: key);

  @override
  State<Medication> createState() => _MedicationState();
}

class _MedicationState extends State<Medication> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  bool value = false;
  int _selectedIndex = 0;
  // List<TableModel> lists = [
  //   TableModel(
  //     'Monday',
  //     'Tuesday',
  //   )
  // ];
  List<String> data = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark
          .copyWith(statusBarColor: Colors.transparent),
      sized: true,
      child: Scaffold(
          backgroundColor: const Color(0xffF4F6F5),
          key: _key,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: Card(
                          elevation: 0,
                          margin: const EdgeInsets.all(20),
                          shape: const RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 0.5, color: Color(0xff938A8A)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          child: InkWell(
                            highlightColor: Colors.grey,
                            splashColor: Colors.grey,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                children: const <Widget>[
                                  Text(
                                    'Intake Info',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff1C1F1E),
                                        fontFamily: 'quicksand',
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Spacer(),
                                  Text(
                                    'Restock',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff1C1F1E),
                                        fontFamily: 'quicksand',
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Spacer(),
                                  Text(
                                    'Instructions',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff1C1F1E),
                                        fontFamily: 'quicksand',
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Card(
                        color: const Color(0xffFFB6BE),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        margin: const EdgeInsets.all(5),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 30),
                          child: Column(
                            children: const <Widget>[
                              Text(
                                'NOT TAKEN',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    fontFamily: 'quicksand'),
                              ),
                              Image(image: AssetImage('assets/pink_drug.png'))
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: const Color(0xffA1EBC6),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        margin: const EdgeInsets.all(5),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 30),
                          child: Column(
                            children: const <Widget>[
                              Text(
                                'TAKEN',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    fontFamily: 'quicksand'),
                              ),
                              Image(image: AssetImage('assets/blue_drug.png'))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(left: 34, bottom: 29, top: 13),
                        child: Text(
                          'Weekly Intake Chat',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: 'quicksand',
                              fontSize: 18,
                              color: Color(0xff1C1F1E)),
                        ),
                      ),
                      Card(
                          elevation: 0.0,
                          margin: const EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: Color(0xffEFE7E8),
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 61.0),
                                      child: Text(
                                        'Morning',
                                        style: TextStyle(
                                            fontFamily: 'quicksand',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Text('Evening',
                                        style: TextStyle(
                                            fontFamily: 'quicksand',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600))
                                  ],
                                ),
                                Row(
                                  children: const <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(right: 85.0),
                                      child: Text(
                                        'Monday',
                                        style: TextStyle(
                                            fontFamily: 'quicksand',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 97.0),
                                        child: SwitchWidget(),
                                      ),
                                    ),
                                    SwitchWidget()
                                  ],
                                ),
                                Row(
                                  children: const <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(right: 85.0),
                                      child: Text(
                                        'Tuesday',
                                        style: TextStyle(
                                            fontFamily: 'quicksand',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 97.0),
                                        child: SwitchWidget(),
                                      ),
                                    ),
                                    SwitchWidget()
                                  ],
                                ),
                                Row(
                                  children: const <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(right: 55.0),
                                      child: Text(
                                        'Wednesday',
                                        style: TextStyle(
                                            fontFamily: 'quicksand',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 97.0),
                                        child: SwitchWidget(),
                                      ),
                                    ),
                                    SwitchWidget()
                                  ],
                                ),
                                Row(
                                  children: const <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(right: 85.0),
                                      child: Text(
                                        'Thursday',
                                        style: TextStyle(
                                            fontFamily: 'quicksand',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 97.0),
                                        child: SwitchWidget(),
                                      ),
                                    ),
                                    SwitchWidget()
                                  ],
                                ),
                                Row(
                                  children: const <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(right: 85.0),
                                      child: Text(
                                        'Friday',
                                        style: TextStyle(
                                            fontFamily: 'quicksand',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 97.0),
                                        child: SwitchWidget(),
                                      ),
                                    ),
                                    SwitchWidget()
                                  ],
                                ),
                                Row(
                                  children: const <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(right: 85.0),
                                      child: Text(
                                        'Saturday',
                                        style: TextStyle(
                                            fontFamily: 'quicksand',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 97.0),
                                        child: SwitchWidget(),
                                      ),
                                    ),
                                    SwitchWidget()
                                  ],
                                ),
                                Row(
                                  children: const <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(right: 85.0),
                                      child: Text(
                                        'Sunday',
                                        style: TextStyle(
                                            fontFamily: 'quicksand',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 97.0),
                                        child: SwitchWidget(),
                                      ),
                                    ),
                                    SwitchWidget()
                                  ],
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 17, vertical: 22),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color(0xFF66CA98),
                        ),
                        minimumSize: MaterialStateProperty.all(
                            const Size.fromHeight(50)),
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Colors.green;
                          }

                          return null;
                        }),
                        textStyle: MaterialStateProperty.all(const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'quicksand')),
                      ),
                      onPressed: () {
                        context.go('/patient');
                      },
                      child: const Text('Send Update',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            backgroundColor: Colors.grey,
            selectedItemColor: const Color(0xff66CA98),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: GestureDetector(
                      onTap: () {
                        context.go('/patient');
                      },
                      child: const Icon(Icons.home, color: Colors.blueAccent)),
                  label: 'Home'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarm, color: Colors.blueAccent),
                  label: 'Calls'),
              BottomNavigationBarItem(
                  icon: FloatingActionButton(
                      elevation: 0,
                      child: Icon(Icons.add),
                      backgroundColor: Color(0xff66CA98),
                      onPressed: () {
                        print('hello');
                      }),
                  label: 'Hello'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_paused_rounded,
                      color: Colors.blueAccent),
                  label: 'Calls'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Colors.blueAccent,
                  ),
                  label: 'Calls'),
            ],
          )),
    );
  }
}
