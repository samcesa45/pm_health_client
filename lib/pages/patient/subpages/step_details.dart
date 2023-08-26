import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:pm_health_client/widget/legend_widget.dart';

class Steps extends StatefulWidget {
  const Steps({Key? key}) : super(key: key);

  @override
  State<Steps> createState() => _StepsState();
}

class _StepsState extends State<Steps> {
  final goodColor = const Color(0xff66CA98);
  final badColor = const Color(0xffF80D38);
  final beginnerColor = const Color(0xffFECA57);
  final betweenSpace = 0.2;

  bool value = false;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  BarChartGroupData generateGroupData(
    int x,
    double pilates,
    double quickWorkout,
    double cycling,
  ) {
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barRods: [
        BarChartRodData(
          borderRadius: BorderRadius.zero,
          fromY: 0,
          toY: pilates,
          color: badColor,
          width: 13,
        ),
        BarChartRodData(
          borderRadius: BorderRadius.zero,
          fromY: pilates,
          toY: pilates + betweenSpace + quickWorkout,
          color: beginnerColor,
          width: 13,
        ),
        BarChartRodData(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          fromY: pilates + quickWorkout,
          toY: pilates + betweenSpace + quickWorkout + betweenSpace + cycling,
          color: goodColor,
          width: 13,
        ),
      ],
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10);
    String text;
    switch (value.toInt()) {
      // case 0:
      //   text = 'JAN';
      //   break;
      // case 1:
      //   text = 'FEB';
      //   break;
      case 2:
        text = 'MAR';
        break;
      case 3:
        text = 'APR';
        break;
      case 4:
        text = 'MAY';
        break;
      case 5:
        text = 'JUN';
        break;
      case 6:
        text = 'JUL';
        break;
      case 7:
        text = 'AUG';
        break;
      case 8:
        text = 'SEP';
        break;
      case 9:
        text = 'OCT';
        break;
      case 10:
        text = 'NOV';
        break;
      case 11:
        text = 'DEC';
        break;
      default:
        text = '';
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
            Card(
              margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                side: BorderSide(
                  width: 4,
                  color: Color(0xff5066F2),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 72, 24, 72),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Activity',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const SizedBox(height: 14),
                    AspectRatio(
                      aspectRatio: 2,
                      child: BarChart(
                        BarChartData(
                          alignment: BarChartAlignment.spaceBetween,
                          titlesData: FlTitlesData(
                            leftTitles: AxisTitles(),
                            rightTitles: AxisTitles(),
                            topTitles: AxisTitles(),
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget: bottomTitles,
                                reservedSize: 20,
                              ),
                            ),
                          ),
                          barTouchData: BarTouchData(enabled: false),
                          borderData: FlBorderData(show: false),
                          gridData: FlGridData(show: false),
                          barGroups: [
                            // generateGroupData(0, 2, 3, 2),
                            // generateGroupData(1, 2, 5, 1.7),
                            // generateGroupData(2, 1.3, 3.1, 2.8),
                            generateGroupData(3, 3.1, 4, 3.1),
                            generateGroupData(4, 0.8, 3.3, 3.4),
                            generateGroupData(5, 2, 5.6, 1.8),
                            generateGroupData(6, 1.3, 3.2, 2),
                            generateGroupData(7, 2.3, 3.2, 5),
                            generateGroupData(8, 2, 4.8, 5),
                            generateGroupData(9, 1.2, 3.2, 5),
                            generateGroupData(10, 0.2, 0, 0),
                            generateGroupData(11, 0.1, 0, 0),
                          ],
                          maxY: 11 + (betweenSpace * 3),
                          extraLinesData: ExtraLinesData(
                            horizontalLines: [
                              HorizontalLine(
                                y: 3.3,
                                color: badColor,
                                strokeWidth: 1,
                                dashArray: [20, 4],
                              ),
                              HorizontalLine(
                                y: 8,
                                color: beginnerColor,
                                strokeWidth: 1,
                                dashArray: [20, 4],
                              ),
                              HorizontalLine(
                                y: 11,
                                color: goodColor,
                                strokeWidth: 1,
                                dashArray: [20, 4],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    LegendsListWidget(
                      legends: [
                        Legend('Good Steps', goodColor),
                        Legend('Beginner', beginnerColor),
                        Legend('Bad Steps', badColor),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xFF5066F2),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      // Change your radius here
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  minimumSize:
                      MaterialStateProperty.all(const Size.fromHeight(50)),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
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
                  context.go('/clinicians');
                },
                child: const Text(
                  'Screenshot & Send',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'quicksand',
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
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
}
