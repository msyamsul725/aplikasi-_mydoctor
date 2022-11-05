import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class DoctorSpecialist {
  static List specialist = [
    {
      "id": "1",
      "label": "Internal medicine",
    },
    {
      "id": "2",
      "label": "Pediatrician",
    },
    {
      "id": "3",
      "label": "Neurologist",
    },
    {
      "id": "4",
      "label": "Obstetrician ",
    },
  ];
  static List<Map<String, dynamic>> medical = [
    {
      "label": "lab Test",
      "icon": "assets/icon/iconsA.png",
      'onTap': () => Get.to(const FormaddView()),
    },
    {
      "label": "Vaccines",
      "icon": "assets/icon/iconsB.png",
      'onTap': () => Get.to(const FormaddView()),
    },
    {
      "label": "Polyclinic",
      "icon": "assets/icon/iconC.png",
      'onTap': () => Get.to(const FormaddView()),
    },
    {
      "label": "Ambulance",
      "icon": "assets/icon/iconsD.png",
      'onTap': () => Get.to(const FormaddView()),
    },
    {
      "label": "Emmergency",
      "icon": "assets/icon/iconsE.png",
      'onTap': () => Get.to(const FormaddView()),
    },
    {
      "label": "Rapid Test",
      "icon": "assets/icon/iconsG.png",
      'onTap': () => Get.to(const FormaddView()),
    },
  ];
}
