import 'package:doctoro_get/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/user_controller.dart';

class UserLogin extends StatelessWidget {
  const UserLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final UserController controller = Get.put(UserController());

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    child: Image.asset(
                        'assets/images/icon.png'), // Replace with your logo path
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'User Login',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: AppColors.textColor),
                  ),
                  const SizedBox(height: 20),
                  // Email Field
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Obx(() => TextFormField(
                        controller: controller.emailController.value,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: AppColors.borderColor)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: const Icon(Icons.email_outlined),
                          labelText: 'Enter Email/Mobile',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: AppColors.buttonColor,),
                        onPressed: () {
                          Get.toNamed('/register');
                        },
                        child: const Text(
                          'Send OTP',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.buttonTextColor,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'OTP will be sent on your email or mobile which you enter above',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text('Or',style: TextStyle(color: AppColors.textColor),),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                              width: 1, color: AppColors.borderColor),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Login with Google',
                          style: TextStyle(
                              color: AppColors.textColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 7,
              right: 16,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(9),
                    side: const BorderSide()),
                onPressed: controller.showDialog,
                child: const Icon(Icons.menu),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
