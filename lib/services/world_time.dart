import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class WorldTime {
  String location; //location name for the UI
  String time = ''; //the time in that location
  String flag; //url to the asset flag icon
  String url; //this is the location url for api endpoint
  bool isDayTime = true; //True or false if daytime or not

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    var endpoint = Uri.parse('http://worldtimeapi.org/api/timezone/$url');
    var response = await http.get(endpoint);
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      //print(jsonResponse);
      //get properties from data
      String datetime = jsonResponse['datetime'];
      String utcOffset = jsonResponse['utc_offset'].substring(1, 3);

      //create a datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(utcOffset)));

      //set the time property
      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
      //print(now);
    } else {
      print('Request failed with status: ${response.statusCode}');
    }
  }
}
