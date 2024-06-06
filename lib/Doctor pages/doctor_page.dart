import 'package:doctoro_get/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'doctor_list_model.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({super.key});

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _onItemTapped(int index) {
    switch (index) {
      case 1:
        Get.toNamed('/docProfile');
        break;
      case 2:
        Get.toNamed('/docSlot');
        break;
      case 3:
        Get.toNamed('/consult');
        break;
    }
  }

  List<Appointment> appointments = [
    Appointment(
      patientName: "John Doe",
      appointmentTime: DateTime.now(),
      imagePath: 'assets/pics/image.png',
    ),
    Appointment(
      patientName: "John Doe",
      appointmentTime: DateTime.now(),
      imagePath: 'assets/pics/image.png',
    ),
    Appointment(
      patientName: "John Doe",
      appointmentTime: DateTime.now(),
      imagePath: 'assets/pics/image.png',
    ),
    Appointment(
      patientName: "John Doe",
      appointmentTime: DateTime.now(),
      imagePath: 'assets/pics/image.png',
    ),
    Appointment(
      patientName: "John Doe",
      appointmentTime: DateTime.now(),
      imagePath: 'assets/pics/image.png',
    ),
    Appointment(
      patientName: "John Doe",
      appointmentTime: DateTime.now(),
      imagePath: 'assets/pics/image.png',
    ),
    Appointment(
      patientName: "John Doe",
      appointmentTime: DateTime.now(),
      imagePath: 'assets/pics/image.png',
    ),
  ];

  final int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              height: 180,
              width: double.infinity,
            ),
          ),
          Positioned(
            top: 68,
            left: 10,
            child: TextButton(
              onPressed: () {
                _scaffoldKey.currentState?.openDrawer();
              },
              child: const Icon(
                Icons.menu,
                color: AppColors.buttonTextColor,
                size: 50,
              ),
            ),
          ),
          const Positioned(
            top: 65,
            left: 85,
            child: Text(
              'Dashboard',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Positioned(
            top: 95,
            left: 85,
            child: Text(
              'Psychologist',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
          ),
          Positioned(
            top: 70,
            right: 10,
            child: TextButton(
              onPressed: () {
                Get.toNamed('/payment');
              },
              child: const Icon(
                Icons.account_balance_wallet_outlined,
                size: 50,
                color: AppColors.buttonTextColor,
              ),
            ),
          ),
          Positioned(
            top: 150.0,
            left: 25,
            right: 25,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.cancel_outlined),
                  hintText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                ),
              ),
            ),
          ),
          Positioned(
            top: 220,
            left: 25,
            right: 25,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  height: 100,
                  width: 180,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        Get.toNamed('/docSlot');
                      },
                      borderRadius: BorderRadius.circular(10),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            size: 50,
                            color: AppColors.buttonColor,
                          ),
                          Text(
                            'Manage Slots',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  height: 100,
                  width: 180,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        Get.toNamed('/consult');
                      },
                      borderRadius: BorderRadius.circular(10),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.chat_outlined,
                                size: 50,
                                color: AppColors.buttonColor,
                              ),
                              Text(
                                '9990+',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          ),
                          Text(
                            'Total Consultation',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
              top: 340,
              left: 25,
              child: Text(
                'Latest Appointment',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 370, left: 25, right: 25),
            child: SizedBox(
              width: double.maxFinite,
              height: double.maxFinite, // Adjust the height as needed
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...appointments.asMap().entries.map(
                      (e) {
                        int index = e.key;
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Material(
                            elevation: 4,
                            shadowColor: Colors.grey.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: 120,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: ListTile(
                                leading: Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey[200],
                                  ),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage(appointments[index].imagePath),
                                    backgroundColor: Colors
                                        .transparent, // Ensure transparent background
                                  ),
                                ),
                                title: Text(
                                  appointments[index].patientName,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(appointments[index]
                                    .appointmentTime
                                    .toString()),
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: 'My Slots',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Chat/Call',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: AppColors.textColor,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.blue,
          unselectedLabelStyle: const TextStyle(color: Colors.white),
          showUnselectedLabels: true,
          iconSize: 25,
          onTap: _onItemTapped,
        ),
      ),
      drawer: Drawer(
        width: 355,
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 202, // Adjust the height as needed
                decoration: const BoxDecoration(
                  color:
                      AppColors.primaryColor, // Background color for the header
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, top: 66),
                      child: Row(
                        children: [Image.asset('assets/pics/image.png')],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25.0, top: 58),
                      child: Row(
                        children: [
                          Text(
                            'Mr. XYZ Figma',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 58.0, left: 40),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.cancel,
                              color: AppColors.textColor,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                trailing: const Icon(Icons.arrow_forward_ios, size: 20),
                leading: const Icon(Icons.dashboard_customize),
                title: const Text('Dashboard'),
                onTap: () {
                  Get.back();
                },
              ),
              ListTile(
                trailing: const Icon(Icons.arrow_forward_ios, size: 20),
                leading: const Icon(Icons.group),
                title: const Text('My Client'),
                onTap: () {
                  Get.toNamed('/consult');
                },
              ),
              ListTile(
                trailing: const Icon(Icons.arrow_forward_ios, size: 20),
                leading: const Icon(Icons.person_2),
                title: const Text('My Profile'),
                onTap: () {
                 Get.toNamed('/docProfile');
                },
              ),
              ListTile(
                trailing: const Icon(Icons.arrow_forward_ios, size: 20),
                leading: const Icon(Icons.credit_card),
                title: const Text('Payments'),
                onTap: () {
                  Get.toNamed('/payment');
                },
              ),
              ListTile(
                trailing: const Icon(Icons.arrow_forward_ios, size: 20),
                leading: const Icon(Icons.calendar_month),
                title: const Text('My Appointment'),
                onTap: () {
                  Get.toNamed('/docSlot');
                },
              ),
              ListTile(
                trailing: const Icon(Icons.arrow_forward_ios, size: 20),
                leading: const Icon(Icons.access_time_filled_sharp),
                title: const Text('My Slots'),
                onTap: () {
                  Get.toNamed('/slotPage');
                },
              ),
              ListTile(
                trailing: const Icon(Icons.arrow_forward_ios, size: 20),
                leading: const Icon(Icons.chat),
                title: const Text('My Chat'),
                onTap: () {
                  Get.toNamed('/consult');
                },
              ),
              ListTile(
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                leading: const Icon(Icons.call),
                title: const Text('My Call'),
                onTap: () {
                  Get.toNamed('/consult');
                },
              ),
              ListTile(
                leading: const Icon(Icons.security),
                title: const Text('Privacy Policy'),
                onTap: () {
                  Get.toNamed('/tooth');
                },
              ),
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text('Help Centre'),
                onTap: () {
                  Get.toNamed('/tooth');
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Container(
                  width: double.infinity,
                  height: 170, // Adjust the height as needed
                  decoration: const BoxDecoration(
                    color: AppColors
                        .primaryColor, // Background color for the header
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 80),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          Get.toNamed('/doctorLogin');
                        },
                        borderRadius: BorderRadius.circular(10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.logout,
                                  size: 40,
                                  color: AppColors.textColor,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Logout',
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: AppColors.textColor),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
