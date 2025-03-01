import 'package:flutter/material.dart';
import 'package:project_ai_chat/View/HomeChat/home.dart';
import 'package:project_ai_chat/View/Welcome/welcome_screen.dart';
import 'package:project_ai_chat/constants/colors.dart';
import 'package:project_ai_chat/constants/image_strings.dart';
import 'package:project_ai_chat/constants/sizes.dart';
import 'package:project_ai_chat/constants/text_strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedPositioned(
              top: animate ? 0 : -30,
              left: animate ? 0 : -30,
              duration: const Duration(milliseconds: 1600),
              child: Image(
                image: AssetImage(splashTopIcon),
              ),
            ),
            AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: 80,
                left: animate ? tDefaultSize : -80,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: animate ? 1 : 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        appNameString,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        appDescriptionString,
                        style: Theme.of(context).textTheme.headlineMedium,
                      )
                    ],
                  ),
                )),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: animate ? 200 : 100,
              left: 0,
              right: 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: animate ? 1 : 0,
                child: Align(
                  alignment: Alignment.center,
                  child: Image(
                    image: AssetImage(splashImage),
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: animate ? 60 : 0,
              right: tDefaultSize,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: animate ? 1 : 0,
                child: Container(
                  width: tSplashContainerSize,
                  height: tSplashContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() => animate = true);
    await Future.delayed(Duration(milliseconds: 5000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
}
