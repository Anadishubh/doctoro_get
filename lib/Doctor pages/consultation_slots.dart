import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

class ManageSlotsScreen extends StatefulWidget {
  const ManageSlotsScreen({super.key});

  @override
  ManageSlotsScreenState createState() => ManageSlotsScreenState();
}

class ManageSlotsScreenState extends State<ManageSlotsScreen> {
  List<Slot> slots = [
    Slot(time: '1:00 PM - 1:30 PM', isConfirmed: true),
    Slot(time: '1:30 PM - 2:00 PM', isConfirmed: true),
    Slot(time: '2:00 PM - 2:30 PM', isConfirmed: false),
    Slot(time: '1:30 PM - 2:00 PM', isConfirmed: false),
    Slot(time: '2:00 PM - 2:30 PM', isConfirmed: false),
    Slot(time: '2:30 PM - 3:00 PM', isConfirmed: false),
    Slot(time: '3:00 PM - 3:30 PM', isConfirmed: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Text('Manage Available Slots'),
      ),
      body: ListView.builder(
        itemCount: slots.length,
        itemBuilder: (context, index) {
          return SlotCard(
            slot: slots[index],
            onDelete: () {
              setState(() {
                slots.removeAt(index);
              });
            },
            onEdit: () {},
          );
        },
      ),
    );
  }
}

class Slot {
  final String time;
  final bool isConfirmed;

  Slot({required this.time, required this.isConfirmed});
}

class SlotCard extends StatelessWidget {
  final Slot slot;
  final VoidCallback? onDelete;
  final VoidCallback? onEdit;

  const SlotCard({
    super.key,
    required this.slot,
    this.onDelete,
    this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.buttonColor,
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: SizedBox(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(slot.time,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 4),
                  Text(
                    slot.isConfirmed ? 'CONFIRMED' : 'NOT CONFIRMED',
                    style: TextStyle(
                      color: slot.isConfirmed ? Colors.greenAccent : AppColors.textColor,fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit, color: AppColors.textColor,size: 30,),
                    onPressed: onEdit,
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red,size: 30,),
                    onPressed: onDelete,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
