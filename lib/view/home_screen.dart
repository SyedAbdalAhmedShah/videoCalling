import 'package:flutter/material.dart';
import 'package:video_calling/view/videocall_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Calling '),
      ),
      body: Center(
        child: OutlinedButton.icon(
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const VideoCallScreen())),
          label: const Text('Do A Video Call'),
          icon: const Icon(Icons.video_call),
        ),
      ),
    );
  }
}
