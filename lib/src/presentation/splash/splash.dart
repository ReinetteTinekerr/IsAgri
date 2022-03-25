import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mvvm_skeleton/src/presentation/resources/assets_manager.dart';
import 'package:mvvm_skeleton/src/presentation/resources/color_manager.dart';
import 'package:mvvm_skeleton/src/presentation/resources/font_manager.dart';
import 'package:mvvm_skeleton/src/presentation/resources/routes_manager.dart';
import 'package:mvvm_skeleton/src/presentation/resources/strings_manager.dart';
import 'package:mvvm_skeleton/src/presentation/resources/styles_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pushReplacementNamed(context, Routes.mainRoute);
      }
    });
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        titleTextStyle:
            getSemiBoldStyle(color: ColorManager.black, fontSize: FontSize.s40),
        elevation: 0,
        centerTitle: true,
        title: const Text(AppStrings.isaAgri),
      ),
      body: Center(
        child: Lottie.asset(JsonAssets.farmingSplash, controller: _controller,
            onLoaded: (composition) {
          _controller.forward();
        }),
      ),
    );
  }
}
