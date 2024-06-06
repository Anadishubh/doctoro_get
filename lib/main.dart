import 'package:doctoro_get/Doctor%20pages/consultation_slots.dart';
import 'package:doctoro_get/Doctor%20pages/doctor_payment.dart';
import 'package:doctoro_get/Doctor%20pages/doctor_profile_page.dart';
import 'package:doctoro_get/Form/doctor_form_page1.dart';
import 'package:doctoro_get/Form/doctor_form_page2.dart';
import 'package:doctoro_get/Form/doctor_form_page3.dart';
import 'package:doctoro_get/Form/doctor_form_page4.dart';
import 'package:doctoro_get/Form/doctor_time_slot.dart';
import 'package:doctoro_get/constants/color_constants.dart';
import 'package:doctoro_get/logins/doctor_login.dart';
import 'package:doctoro_get/logins/user_login.dart';
import 'package:doctoro_get/privacy_policy.dart';
import 'package:doctoro_get/registeration/language_selection.dart';
import 'package:doctoro_get/registeration/question_selection.dart';
import 'package:doctoro_get/registeration/user_register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Doctor pages/doctor_page.dart';
import 'Doctor pages/doctor_slots.dart';
import 'User Pages/user_page.dart';
import 'SplashScreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData(
        canvasColor: AppColors.primaryColor,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Doctro_get',
      home:   const DoctorPage(),
      // initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page:()=>const SplashScreen()),
        GetPage(name: '/userLogin', page:()=>const UserLogin()),
        GetPage(name: '/doctorLogin', page:()=>DoctorLogin()),
        GetPage(name: '/register', page:()=>const RegisterUser()),
        GetPage(name: '/language', page:()=>const LanguageSelection()),
        GetPage(name: '/doctorForm', page:()=>const DoctorForm()),
        GetPage(name: '/question', page:()=>const QuestionScreen()),
        GetPage(name: '/formPage2', page:()=>const DoctorForm2()),
        GetPage(name: '/formPage3', page:()=>const DoctorForm3()),
        GetPage(name: '/formPage4', page:()=>const DoctorForm4()),
        GetPage(name: '/userPage', page:()=>const UserPage()),
        GetPage(name: '/docPage', page:()=> const DoctorPage()),
        GetPage(name: '/slotPage', page:()=>DocTimeSlot()),
        GetPage(name: '/docSlot', page:()=>DoctorSlots()),
        GetPage(name: '/consult', page:()=>const ManageSlotsScreen()),
        GetPage(name: '/tooth', page: ()=> const ToothLess()),
        GetPage(name: '/payment', page: ()=>DoctorPayment()),
        GetPage(name: '/docProfile', page: ()=>const DoctorProfilePage()),
      ],
    );
  }
}