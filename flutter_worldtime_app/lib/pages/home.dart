import 'package:flutter/material.dart';
import 'loading.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;

    print(data);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              label: Text('Edit Location'),
              icon: Icon(Icons.edit_location),
            ),
          ],
        ),
      ),
    );
  }
}
