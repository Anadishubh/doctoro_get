import 'package:doctoro_get/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorForm2 extends StatefulWidget {
  const DoctorForm2({super.key});


  @override
  State<DoctorForm2> createState() => _DoctorForm2State();
}

class _DoctorForm2State extends State<DoctorForm2> {

  bool _isAnxiety = false;
  bool _is2 = false;
  bool _is3 = false;
  bool _is4 = false;
  bool _is5 = false;
  bool _is6 = false;
  bool _is7 = false;
  bool _is8 = false;
  bool _is9 = false;

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _instaController = TextEditingController();
  final TextEditingController _degree = TextEditingController();
  final TextEditingController _workExperience = TextEditingController();
  final TextEditingController _hireController = TextEditingController();
  String? _selecteddoc;
  String? _selectArea;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Text(
          'Psychologist/Yoga Practitioner Q/A',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.textColor),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: _HeaderDelegate(),
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'You are ?',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                          label: const Text('Select'),
                          contentPadding: const EdgeInsets.all(10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                      value: _selecteddoc,
                      items: <String>['Psychologist', 'Yoga Practitioner']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selecteddoc = newValue;
                          print(_selecteddoc);
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select this';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Highest degree attained? Details',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          height: 80,
                          child: TextFormField(
                            maxLines: 3,
                            controller: _degree,
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please fill this !';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Total work experience in years',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          controller: _workExperience,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please fill experience';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Area of specialization ?',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                          label: const Text('Select'),
                          contentPadding: const EdgeInsets.all(10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                      value: _selectArea,
                      items: <String>['Psychologist', 'Yoga Practitioner']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectArea = newValue;
                          print(_selectArea);
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select your Field';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'What will you consult for ?',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GridView.count(
                      primary: false,
                      crossAxisCount: 2,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                      childAspectRatio: 5,
                      shrinkWrap: true,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isAnxiety = !_isAnxiety;
                                });
                              },
                              child: Icon(
                                _isAnxiety
                                    ? Icons.check_box
                                    : Icons.check_box_outline_blank,
                                color:
                                    _isAnxiety ? AppColors.buttonColor : null,
                              ),
                            ),
                            const SizedBox(width: 6),
                            const Text('Anxiety'),
                          ],
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _is2 = !_is2;
                                });
                              },
                              child: Icon(
                                _is2
                                    ? Icons.check_box
                                    : Icons.check_box_outline_blank,
                                color: _is2 ? AppColors.buttonColor : null,
                              ),
                            ),
                            const SizedBox(width: 6),
                            const Text('Depression'),
                          ],
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _is9 = !_is9;
                                });
                              },
                              child: Icon(
                                _is9
                                    ? Icons.check_box
                                    : Icons.check_box_outline_blank,
                                color: _is9 ? AppColors.buttonColor : null,
                              ),
                            ),
                            const SizedBox(width: 6),
                            const Text('Just Talk'),
                          ],
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _is3 = !_is3;
                                });
                              },
                              child: Icon(
                                _is3
                                    ? Icons.check_box
                                    : Icons.check_box_outline_blank,
                                color: _is3 ? AppColors.buttonColor : null,
                              ),
                            ),
                            const SizedBox(width: 6),
                            const Text('Bad Mood'),
                          ],
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _is4 = !_is4;
                                });
                              },
                              child: Icon(
                                _is4
                                    ? Icons.check_box
                                    : Icons.check_box_outline_blank,
                                color: _is4 ? AppColors.buttonColor : null,
                              ),
                            ),
                            const SizedBox(width: 6),
                            const Text('Panic Attack'),
                          ],
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _is5 = !_is5;
                                });
                              },
                              child: Icon(
                                _is5
                                    ? Icons.check_box
                                    : Icons.check_box_outline_blank,
                                color: _is5 ? AppColors.buttonColor : null,
                              ),
                            ),
                            const SizedBox(width: 6),
                            const Text('Stress'),
                          ],
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _is6 = !_is6;
                                });
                              },
                              child: Icon(
                                _is6
                                    ? Icons.check_box
                                    : Icons.check_box_outline_blank,
                                color: _is6 ? AppColors.buttonColor : null,
                              ),
                            ),
                            const SizedBox(width: 6),
                            const Text('Sex Abuse'),
                          ],
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _is7 = !_is7;
                                });
                              },
                              child: Icon(
                                _is7
                                    ? Icons.check_box
                                    : Icons.check_box_outline_blank,
                                color: _is7 ? AppColors.buttonColor : null,
                              ),
                            ),
                            const SizedBox(width: 6),
                            const Text('Relationship/Couple\nadvise'),
                          ],
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _is8 = !_is8;
                                });
                              },
                              child: Icon(
                                _is8
                                    ? Icons.check_box
                                    : Icons.check_box_outline_blank,
                                color: _is8 ? AppColors.buttonColor : null,
                              ),
                            ),
                            const SizedBox(width: 6),
                            const Text('Child(teenage)Issues'),
                          ],
                        ),
                        const SizedBox(height: 20,),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Instagram profile link [if suitable]',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _instaController,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Why do you think we should onboard you ?',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      maxLines: 3,
                      controller: _hireController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please fill this!';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 32),
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: AppColors.buttonColor,
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Get.toNamed('/formPage3');
                          }
                        },
                        child: const Text(
                          'Next',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.buttonTextColor,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _HeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 80,
      width: double.maxFinite,
      color: AppColors.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.black,
                  child: Icon(Icons.done, color: Colors.white),
                ),
                SizedBox(height: 4),
                Text(
                  'Basic Details',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: Container(
                width: 20,
                height: 2,
                color: Colors.grey,
              ),
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.black,
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Education',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: Container(
                width: 20,
                height: 2,
                color: Colors.grey,
              ),
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.grey,
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Background',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: Container(
                width: 20,
                height: 2,
                color: Colors.grey,
              ),
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.grey,
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Roster',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => 80.0;

  @override
  double get minExtent => 80.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
