import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import '../../../../shared/util/input.dart';
import '../../../../shared/widget/input.dart';
import '../view/formadd_view.dart';

class FormaddController extends GetxController {
  FormaddView? view;
  bool? isChecked = false;
  var selectedCheckBox = "";
  String tokoId = "";
  var isLoading = false.obs;
  var selectedSpecialist = "";
  var photo = "";

  doSave() async {
    isLoading.value = true;
    await Future.delayed(const Duration(seconds: 3));
    isLoading.value = false;
    var doctorName = Input.get("doctor_name");
    var description = Input.get("description");
    var rating = InputA.get("rating");

    await FirebaseFirestore.instance.collection("doctor").add({
      "doctor_name": doctorName,
      "photo": photo,
      "rating": rating,
      "description": description,
      "specialist": selectedSpecialist,
    });
    Get.back();
  }
}
