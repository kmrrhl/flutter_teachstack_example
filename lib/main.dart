import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_teachstack_sdk/flutter_teachstack_sdk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    await FlutterTeachstackSdk.liveClass(url);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Teachstack SDK'),
        ),
        body: const Center(
          child: Text('Live Classroom'),
        ),
      ),
    );
  }
}