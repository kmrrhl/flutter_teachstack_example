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
    await FlutterTeachstackSdk.liveClass("https://video.teachmint.com/videoroom/videodemo::parthTest/studentId13/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb29tX2lkIjoidmlkZW9kZW1vOjpwYXJ0aFRlc3QiLCJ1aWQiOiJzdHVkZW50SWQxMyIsInVuYW1lIjoic3R1ZGVudCIsInV0eXBlIjoyLCJleHAiOjE2NTU0MjgxMjF9.j0t5CD11zAX4X8Fr4Q8rsP54C_hS2XV4JQwco7C8qUg",
    "App group name of your ios app");
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