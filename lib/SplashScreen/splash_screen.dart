import 'package:doctoro_get/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Widget _buildDoctorBackground() {
    final screenSize = MediaQuery.of(context).size;
    final imageSize = screenSize.height;
    return Center(
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 2, end: 1),
        duration: const Duration(seconds: 1),
        builder: (context, scale, child) {
          return Transform.scale(
            scale: scale,
            child: Image.asset(
              'assets/images/sp1.png',
              width: imageSize,
              height: imageSize,
              fit: BoxFit.fill,
            ),
          );
        },
      ),
    );
  }

  Widget _logoImage(SplashScreenController controller) {
    return Obx(() {
      return AnimatedOpacity(
        opacity: controller.iconOpacity.value,
        duration: const Duration(seconds: 2),
        child: Image.asset(
          'assets/images/icon.png',
          width: 160,
          height: 160,
        ),
      );
    });
  }

  Widget _subHeadingText(SplashScreenController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Obx(() {
        return AnimatedOpacity(
          opacity: controller.subheadingAnimation.value ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 250),
          child: const Text(
            'Offering a quick emotional relief session at your convenience, easing your day to day worries',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
          ),
        );
      }),
    );
  }

  Widget _mainHeadingText(SplashScreenController controller) {
    return Center(
      child: Obx(() {
        return AnimatedOpacity(
          opacity: controller.headingAnimation.value ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 300),
          child: const Text(
            'Personalised and affordable therapy',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
        );
      }),
    );
  }

  Widget _getStartedButton(SplashScreenController controller) {
    return Positioned(
      bottom: 30,
      left: 44,
      right: 44,
      child: Obx(() {
        return AnimatedOpacity(
          opacity: controller.buttonAnimation.value ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 250),
          child: SizedBox(
            height: 48,
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: AppColors.buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Get.toNamed('/userLogin');
              },
              child: const Text(
                'Get Started',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    SplashScreenController controller = Get.put(SplashScreenController());

    return Scaffold(
      body: Stack(
        children: [
          _buildDoctorBackground(),
          Center(
            child: Column(
              children: [
                const SizedBox(height: 120),
                _logoImage(controller),
                const SizedBox(height: 250),
                _subHeadingText(controller),
              ],
            ),
          ),
          _mainHeadingText(controller),
          _getStartedButton(controller),
        ],
      ),
    );
  }
}
