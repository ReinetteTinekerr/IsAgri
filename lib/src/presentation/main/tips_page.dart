import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mvvm_skeleton/src/presentation/resources/assets_manager.dart';
import 'package:mvvm_skeleton/src/presentation/resources/values_manager.dart';
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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: _getAnimatedImage(JsonAssets.empty));
  }

  Widget _getAnimatedImage(String animationName) {
    return SizedBox(
      height: AppSize.s220,
      width: AppSize.s220,
      child: Lottie.asset(animationName),
    );
  }
}
