import 'package:doctoro_get/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageSelection extends StatefulWidget {
  const LanguageSelection({super.key});

  @override
  LanguageSelectionState createState() => LanguageSelectionState();
}

class LanguageSelectionState extends State<LanguageSelection> {
  int selectedIndex = 0;

  final List<String> languages = [
    'English',
    'Hindi',
    'Bengali',
    'Marathi',
    'Telugu',
    'Tamil',
    'Kannada',
    'Gujarati',
    'Odia',
    'Assamese',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: const Text(
          'Language Selection',
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.textColor),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 70),
            child: Text(
              'Select language according to your preference',
              style: TextStyle(fontSize: 16, color: AppColors.textColor),

            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                  childAspectRatio: 1.5,
                ),
                itemCount: languages.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: selectedIndex == index
                            ? AppColors.accentColor
                            : Colors.transparent,
                        border: Border.all(
                          color: selectedIndex == index
                              ? AppColors.borderColor
                              : Colors.grey.shade300,
                          width: 1, // Adjust the width of the border as needed
                        ),
                      ),
                      child: Center(
                        child: Text(
                          languages[index],
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 100),
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
                  Get.toNamed('/question');
                },
                child: const Text(
                  'Sumbit',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.buttonTextColor,
                      fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
