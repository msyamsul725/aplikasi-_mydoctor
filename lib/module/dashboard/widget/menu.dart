import 'package:flutter/material.dart';

import '../../../services/doctor_specialist.dart';

class MenuMedical extends StatefulWidget {
  final Function(String)? onChanged;
  final Function? onTap;
  const MenuMedical({
    this.onChanged,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  State<MenuMedical> createState() => _MenuMedicalState();
}

class _MenuMedicalState extends State<MenuMedical> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1.2,
      ),
      itemCount: DoctorSpecialist.medical.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var item = DoctorSpecialist.medical[index];
        bool selected = selectedValue == item['label'];
        return InkWell(
          onTap: item['onTap'],
          // onTap: () {
          //   selectedValue = item['label'];
          //   setState(() {});
          //   if (widget.onChanged != null) {
          //     widget.onChanged!(selectedValue!);
          //   }
          // },
          child: Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: selected ? Colors.blue : Colors.grey[200],
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  16.0,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: 50.0,
                  child: Image.asset(
                    item['icon'],
                    width: 44.0,
                    height: 54.0,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: 20.0,
                  child: Text(
                    item['label'],
                    style: TextStyle(
                      color: selected ? Colors.white : Colors.black,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
