import 'package:flutter/material.dart';
import 'package:proeject_stream/call_screen.dart';

import 'package:stream_video/stream_video.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Right after creation client connects to the backend and authenticates the user.
  // You can set `options: StreamVideoOptions(autoConnect: false)` if you want to disable auto-connect.
  final client = StreamVideo(
    'mmhfdzb5evj2',
    user: User.regular(userId: 'Talon_Karrde', role: 'admin', name: 'John Doe'),
    userToken:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiVGFsb25fS2FycmRlIiwiaXNzIjoiaHR0cHM6Ly9wcm9udG8uZ2V0c3RyZWFtLmlvIiwic3ViIjoidXNlci9UYWxvbl9LYXJyZGUiLCJpYXQiOjE3MTk2NTEyNDcsImV4cCI6MTcyMDI1NjA1Mn0.q_GqRibUjdAIE--X4NErndaXFjU7E4hx_y3p9xt2A_w',
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        child: const Text(
          'Create Call',
          style: TextStyle(color: Colors.black),
        ),
        onPressed: () async {
          try {
            var call = StreamVideo.instance.makeCall(
              callType: StreamCallType(),
              id: 'MwyoNlv4zWGF',
            );

            await call.getOrCreate();

            // Created ahead
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CallScreen(call: call),
              ),
            );
          } catch (e) {
            debugPrint('Error joining or creating call: $e');
            debugPrint(e.toString());
          }
        },
      )),
    );
  }
}

/*
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final client = StreamVideo(
    'YOUR_API_KEY',
    user: User.regular(userId: 'Talon_Karrde', role: 'admin', name: 'John Doe'),
    userToken: 'YOUR_USER_TOKEN',
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        child: const Text(
          'Create Call',
          style: TextStyle(color: Colors.black),
        ),
        onPressed: () async {
          try {
            var call = StreamVideo.instance.makeCall(
              callType: StreamCallType(),
              id: 'MwyoNlv4zWGF',
              options: CallOptions(
                microphoneEnabled: true,
                cameraEnabled: true,
              ),
            );

            await call.getOrCreate();

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CallScreen(call: call),
              ),
            );
          } catch (e) {
            debugPrint('Error joining or creating call: $e');
          }
        },
      )),
    );
  }
}
*/