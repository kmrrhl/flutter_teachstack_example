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
    await FlutterTeachstackSdk.liveClass("https://video.teachmint.com/videoroom/videodemo::parthTest/teacherId/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb29tX2lkIjoidmlkZW9kZW1vOjpwYXJ0aFRlc3QiLCJ1aWQiOiJ0ZWFjaGVySWQiLCJ1bmFtZSI6InRlYWNoZXIiLCJ1dHlwZSI6MSwiZXhwIjoxNjU1NDE2OTU0fQ.NvdIh6ynmG2jIHeyzWNtPvqCKnXNHFUtgQk6722u8Ho",
    "group.teachmint.ios.app.appgroup");
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