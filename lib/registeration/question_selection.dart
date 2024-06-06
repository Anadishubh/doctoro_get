import 'package:doctoro_get/constants/color_constants.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: const Text('User Login'),
      ),
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Image.asset('assets/gif/dancing-toothless.gif'),
      ),
    );
  }
}
