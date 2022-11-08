// ignore_for_file: avoid_unnecessary_containers

import 'package:bornomala_app/pages/banjonborno_page.dart';
import 'package:bornomala_app/pages/shoroborno_page.dart';
import 'package:bornomala_app/widget/letters_widget.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer(this.videoUrl, this.from, {Key? key}) : super(key: key);

  final String videoUrl;
  final String from;

  @override
  State<MyVideoPlayer> createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  late VideoPlayerController _controller;
  late Future<void> _initializedVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset(widget.videoUrl);
    _initializedVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _initializedVideoPlayerFuture.then((value) => _controller.play());
    _controller.setVolume(1);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FutureBuilder(
              future: _initializedVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Container(
                    child: AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    ),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              if (widget.from == 'a') {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShorobornoPage()));
              } else {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BanjonBornoPage()));
              }
            },
            child: Container(
              height: 60,
              width: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.red[900],
              ),
              child: Center(
                child: Letters(
                  text: 'পূর্ববর্তী পৃষ্ঠা',
                  size: 37,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
