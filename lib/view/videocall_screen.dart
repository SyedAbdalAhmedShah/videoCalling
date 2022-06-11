import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';
import 'package:video_calling/utils/config.dart';

class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({Key? key}) : super(key: key);

  @override
  State<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  final AgoraClient _client = AgoraClient(
      agoraConnectionData: AgoraConnectionData(
          appId: Config.appId,
          channelName: Config.channelName,
          tempToken: Config.token));

  @override
  void initState() {
    // TODO: implement initState
    initlaizeAgoraClient();
    super.initState();
  }

  Future initlaizeAgoraClient() async {
    await _client.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AgoraVideoViewer(client: _client),
          AgoraVideoButtons(client: _client)
        ],
      ),
    );
  }
}
