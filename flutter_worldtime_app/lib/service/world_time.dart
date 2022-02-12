import 'dart:convert';
import 'package:http/http.dart';

class WorldTime {
  String? location; //location name of UI
  String? time; //the time in that location
  String? flag; //url for assets icon
  String? url; //location url for api endpoint

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      //make request.
      Response response =
          await get(Uri.http('worldtimeapi.org', 'api/timezone/$url'));
      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      // print(datetime);
      // print(offset);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      //set time property
      time = now.toString();
      print(time);
    } catch (e) {
      print(e.toString());
      time = 'Could not get Data';
    }
  }
}
