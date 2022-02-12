import 'package:flutter/material.dart';
import 'package:flutter_worldtime_app/service/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setWorldTime() async {
    WorldTime instanse = WorldTime(
        location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instanse.getTime();
    //Route to home and pass data argument to the home
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instanse.location,
      'flag': instanse.flag,
      'time': instanse.time,
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Text('Loanding'),
        ),
      ),
    );
  }
}
