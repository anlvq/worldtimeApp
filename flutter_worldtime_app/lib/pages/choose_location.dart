import 'package:flutter/material.dart';

class ChosseLocation extends StatefulWidget {
  const ChosseLocation({Key? key}) : super(key: key);

  @override
  State<ChosseLocation> createState() => _ChosseLocationState();
}

class _ChosseLocationState extends State<ChosseLocation> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Location'),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
      ),
      body: SafeArea(
        child: Text('Choose Location Screen'),
      ),
    );
  }
}
