import 'package:doctoro_get/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class RegisterUser extends StatelessWidget {
  const RegisterUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: const Text(
          'Do you need help for',style: TextStyle(color: AppColors.textColor),
          textAlign: TextAlign.start,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 80,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: AppColors.borderColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: AppColors.accentColor,
                ),
                onPressed: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Image.asset(
                        'assets/pics/user.png',
                        width: 69,
                        height: 72,
                      ),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Individual',
                          style: TextStyle(
                            color: AppColors.secondaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'For self',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.textColor,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios_outlined,color: AppColors.textColor,),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10), // Spacer between buttons
            SizedBox(
              width: double.infinity,
              height: 80,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: AppColors.borderColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: AppColors.accentColor,
                ),
                onPressed: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Image.asset(
                        'assets/pics/couple.png',
                        width: 69,
                        height: 72,
                      ),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Couple',
                          style: TextStyle(
                            color: AppColors.secondaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'For myself and partner',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.textColor,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios_outlined,color: AppColors.textColor,),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10), // Spacer between buttons
            SizedBox(
              width: double.infinity,
              height: 80,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: AppColors.borderColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: AppColors.accentColor,
                ),
                onPressed: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Image.asset(
                        'assets/pics/children.png',
                        width: 69,
                        height: 72,
                      ),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Child',
                          style: TextStyle(
                            color: AppColors.secondaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'For teen age',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.textColor,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios_outlined,color: AppColors.textColor,),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
              height: 80,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color:AppColors.borderColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: AppColors.accentColor,
                ),
                onPressed: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Image.asset(
                        'assets/pics/girl.png',
                        width: 69,
                        height: 72,
                      ),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Individual',
                          style: TextStyle(
                            color: AppColors.secondaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'For Self',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.textColor,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios_outlined,color: AppColors.textColor,),
                  ],
                ),
              ),
            ),
            const Spacer(), // Spacer between buttons
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 29),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: AppColors.buttonColor,
                  ),
                  onPressed: (){
                    Get.toNamed('/language');
                  },
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: AppColors.buttonTextColor,
                    ),
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
