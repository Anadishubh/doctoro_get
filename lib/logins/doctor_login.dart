import 'package:doctoro_get/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/doctor_controller.dart';

class DoctorLogin extends StatelessWidget {
  DoctorLogin({super.key});

  final DoctorScreenController controller = Get.put(DoctorScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(height: 40), // Add space at the top
                  SizedBox(
                    height: 200,
                    child: Image.asset(
                      'assets/images/icon.png',
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Psychologist/Yoga\nPractitioner Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: AppColors.textColor),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Email Field
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Obx(
                      () => TextFormField(
                        controller: controller.emailController.value,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: AppColors.borderColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: const Icon(Icons.email_outlined),
                          labelText: 'Enter Email/Mobile',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 1),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: AppColors.buttonColor,
                        ),
                        onPressed: () {
                          Get.toNamed('/doctorForm');
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
                  const SizedBox(
                    height: 10,
                  ),
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
                  const SizedBox(height: 20),
                  const Text('Or',style: TextStyle(color: AppColors.textColor),),
                  const SizedBox(height: 20),
                  // Google Login Button
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
                  ), // This pushes the container to the bottom
                ],
              ),
            ),
          ),
          Positioned(
            top: 60,
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
          )
        ],
      ),
    );
  }
}
