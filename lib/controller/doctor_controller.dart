import 'package:doctoro_get/constants/color_constants.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';


class DoctorScreenController extends GetxController {
  final emailController = TextEditingController().obs;


  void showDialog() {
    Get.dialog(
      AlertDialog(
        backgroundColor: AppColors.backgroundColor,
        insetPadding: const EdgeInsets.symmetric(horizontal: 1),
        title: const Text(
          'Login / Register as',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 158,
              height: 142,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: AppColors.borderColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                Get.toNamed('/userLogin');
                },
                child: const Text(
                  'User',
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 158,
              height: 142,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: AppColors.borderColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Get.back();
                },
                child: const Text(
                  'Psychologist/\nYoga Practitioner',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
