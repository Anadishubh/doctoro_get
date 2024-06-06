import 'package:doctoro_get/constants/color_constants.dart';
import 'package:flutter/material.dart';

class ToothLess extends StatelessWidget {
  const ToothLess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Text('Toothless UwU'),
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/gif/dancing-toothless.gif'),
        ],
      ),
    );
  }
}
