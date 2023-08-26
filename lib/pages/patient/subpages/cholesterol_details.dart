import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:pm_health_client/widget/dashed_border.dart';
import 'package:pm_health_client/widget/indicator.dart';
import 'package:pm_health_client/widget/legend_widget.dart';
import 'package:pm_health_client/widget/radial_bar.dart';

class CholesterolDetails extends StatefulWidget {
  const CholesterolDetails({Key? key}) : super(key: key);

  @override
  State<CholesterolDetails> createState() => _CholesterolDetailsState();
}

class _CholesterolDetailsState extends State<CholesterolDetails> {
  int touchedIndex = -1;

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
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0.0),
                  child: IconButton(
                      onPressed: () {
                        context.go('/monitor-heart');
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
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 33, 10, 0.0),
                  child: Image(
                    image: AssetImage('assets/small_logo.png'),
                  ),
                ),
              ],
            ),
            AspectRatio(
              aspectRatio: 1.3,
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    height: 18,
                  ),
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: PieChart(
                        PieChartData(
                          pieTouchData: PieTouchData(
                            touchCallback:
                                (FlTouchEvent event, pieTouchResponse) {
                              setState(() {
                                if (!event.isInterestedForInteractions ||
                                    pieTouchResponse == null ||
                                    pieTouchResponse.touchedSection == null) {
                                  touchedIndex = -1;
                                  return;
                                }
                                touchedIndex = pieTouchResponse
                                    .touchedSection!.touchedSectionIndex;
                              });
                            },
                          ),
                          borderData: FlBorderData(
                            border: Border(
                                bottom: BorderSide(
                                    color: Theme.of(context).dividerColor)),
                            show: true,
                          ),
                          sectionsSpace: 0,
                          centerSpaceRadius: 100,
                          sections: showingSections(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 28,
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Indicator(
                  color: Colors.amber,
                  text: 'Low',
                  isSquare: false,
                ),
                SizedBox(
                  height: 4,
                ),
                Indicator(
                  color: Colors.red,
                  text: 'High',
                  isSquare: false,
                ),
                SizedBox(
                  height: 14,
                ),
                Indicator(
                  color: Color(0xff66CA98),
                  text: 'normal',
                  isSquare: false,
                ),
              ],
            ),
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

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.blue,
            value: 100,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.amber,
              shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: Colors.yellow,
            value: 100,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.cyan,
              shadows: shadows,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: Colors.purple,
            value: 100,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.red,
              shadows: shadows,
            ),
          );
        case 3:
          return PieChartSectionData(
            borderSide: const BorderSide(
                width: 2, color: Colors.green, style: BorderStyle.solid),
            showTitle: true,
            color: Colors.red,
            value: 100,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.yellow,
              shadows: shadows,
            ),
          );
        default:
          throw Error();
      }
    });
  }
}
