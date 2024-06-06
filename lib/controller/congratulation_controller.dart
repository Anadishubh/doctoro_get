import 'package:doctoro_get/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CongratulationController extends GetxController {
  void showDialog() {
    Get.dialog(
      AlertDialog(
        backgroundColor: AppColors.backgroundColor,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: AppColors.accentColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.thumb_up,
                  size: 70,
                )),
            const SizedBox(
              height: 30,
            ),
            const Column(
              children: [
                Text(
                  'Congratulations !',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Column(
              children: [
                Text(
                  'You have been shortlisted for Round 1 interview ( video call)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: AppColors.textColor),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/docPage');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.buttonColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      'Done',
                      style: TextStyle(color: AppColors.buttonTextColor),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
