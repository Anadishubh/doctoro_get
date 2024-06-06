import 'package:get/get.dart';

class SplashScreenController extends GetxController{
  var iconOpacity = 0.0.obs;
  var headingAnimation = false.obs;
  var subheadingAnimation = false.obs;
  var buttonAnimation = false.obs;

  @override
  void onInit(){
    super.onInit();
    headingAnimations();
  }

  void headingAnimations(){
    Future.delayed(const Duration(milliseconds: 200),(){
      iconOpacity.value = 1.0;
    });

    Future.delayed(const Duration(seconds: 2), () {
      headingAnimation.value = true;
    });

    Future.delayed(const Duration(seconds: 3), () {
      subheadingAnimation.value = true;
    });

    Future.delayed(const Duration(seconds: 4), () {
      buttonAnimation.value = true;
    });
  }
}