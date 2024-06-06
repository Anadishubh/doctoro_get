import 'package:doctoro_get/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/filter_controller.dart';
import 'doctor_slots_model.dart';

class DoctorSlots extends StatefulWidget {
  DoctorSlots({super.key});

  final FilterController controller = Get.put(FilterController());

  @override
  State<DoctorSlots> createState() => _DoctorSlotsState();
}

class _DoctorSlotsState extends State<DoctorSlots> {
  List<Slots> slots = [
    Slots(
      patientName: "John Doe",
      appointmentTime: DateTime.now(),
      imagePath: 'assets/pics/image.png',
    ),
    Slots(
      patientName: "John Doe",
      appointmentTime: DateTime.now(),
      imagePath: 'assets/pics/image.png',
    ),
    Slots(
      patientName: "John Doe",
      appointmentTime: DateTime.now(),
      imagePath: 'assets/pics/image.png',
    ),
    Slots(
      patientName: "John Doe",
      appointmentTime: DateTime.now(),
      imagePath: 'assets/pics/image.png',
    ),
    Slots(
      patientName: "John Doe",
      appointmentTime: DateTime.now(),
      imagePath: 'assets/pics/image.png',
    ),
    Slots(
      patientName: "John Doe",
      appointmentTime: DateTime.now(),
      imagePath: 'assets/pics/image.png',
    ),
    Slots(
      patientName: "John Doe",
      appointmentTime: DateTime.now(),
      imagePath: 'assets/pics/image.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Padding(
          padding: EdgeInsets.only(right: 130.0),
          child: Text(
            'Appointment List',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              widget.controller.showFilter();
            },
            icon: const Icon(
              Icons.filter_alt_outlined,
              size: 35,
              color: AppColors.textColor,
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite, // Adjust the height as needed
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                ...slots.asMap().entries.map(
                      (e) {
                    int index = e.key;
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: 120, // Increase the height to make the box larger
                        decoration: BoxDecoration(
                          color: AppColors.accentColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(10),
                          leading: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[200],
                            ),
                            child: CircleAvatar(
                              backgroundImage: AssetImage(slots[index].imagePath),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                          title: Text(
                            slots[index].patientName,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            slots[index].appointmentTime.toString(),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
