import 'package:cached_video_player/cached_video_player.dart';
import 'package:flutter/material.dart';

class VideoPlayerItem extends StatefulWidget {
  const VideoPlayerItem({super.key, required this.videoUrl});
  final String videoUrl;
  @override
  State<VideoPlayerItem> createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem> {
  @override
  Widget build(BuildContext context) {
    // aspecyt ratio is the ratio of the width to the height of the video
    late CachedVideoPlayerController videoPlayerController;
    bool isPlay = false;
    @override
    void initState() {
      super.initState();
      videoPlayerController =
          CachedVideoPlayerController.network(widget.videoUrl)
            ..initialize().then((_) {
              videoPlayerController.setVolume(1);
            });
    }

    @override
    void dispose() {
      videoPlayerController.dispose();
      super.dispose();
    }

    return AspectRatio(
        aspectRatio: 16 / 9,
        child: Stack(
          children: [
            CachedVideoPlayer(videoPlayerController),
            Center(
              child: IconButton(
                  onPressed: () {
                    if (isPlay) {
                      videoPlayerController.pause();
                    } else {
                      videoPlayerController.play();
                    }
                    setState(() {
                      isPlay = !isPlay;
                    });
                  },
                  icon: Icon(
                    isPlay ? Icons.pause_circle : Icons.play_circle,
                    color: Colors.white,
                  )),
            ),
          ],
        ));
  }
}
