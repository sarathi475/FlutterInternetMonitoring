import 'package:flutter/material.dart';
import 'package:connection_notifier/connection_notifier.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Connection 2 Notifier Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConnectionNotifier(
        disconnectedText: "No Internet, Retrying",
        connectedText: "Internet Connected",
        disconnectedBackgroundColor: Colors.redAccent,
        alignment: AlignmentDirectional.topCenter,
        // connectedDuration: Duration(seconds: 3),
        // disconnectedDuration: Duration(seconds: 3),Scaffold(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Connection Notifier Demo'),
          ),

          /// If you want to toggle some widgets based on connection state
          body: Container(
            child: Center(child: Text("Internet Connectivity checking sample")),
          ),
        ));
  }
}
