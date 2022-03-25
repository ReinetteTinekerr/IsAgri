import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TipsPage extends StatefulWidget {
  const TipsPage({Key? key}) : super(key: key);

  @override
  State<TipsPage> createState() => _TipsPageState();
}

class _TipsPageState extends State<TipsPage> {
  late final YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: 'iLnmTe5Q2Qw',
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: _controller,
      showVideoProgressIndicator: true,
      progressIndicatorColor: Colors.amber,
      progressColors: ProgressBarColors(
        playedColor: Colors.amber,
        handleColor: Colors.amberAccent,
      ),
      onReady: () {
        print('Player is ready.');
      },
    );
  }
}
