import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

class MavzuMatni extends StatefulWidget {
  const MavzuMatni({Key? key}) : super(key: key);

  @override
  State<MavzuMatni> createState() => _MavzuMatniState();
}

class _MavzuMatniState extends State<MavzuMatni> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://github.com/GeekyAnts/flick-video-player-demo-videos/blob/master/demo/default_player.mp4?raw=true"),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: FlickVideoPlayer(flickManager: flickManager),
          ),
          Expanded(
              flex: 7,
              child: Container(
                  color: Colors.cyanAccent,
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                      "Bu darsda biz siz bilan figma dasturida web sayt uchun dizayn qilishni sinab ko`ramiz. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")))
        ],
      ),
    );
  }
}
