import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view/product_detail_view.dart';

class ProductDetailController extends GetxController {
  ProductDetailView? view;

  Rxn<DateTime> selectedDay = Rxn<DateTime>();
  var selectedTime = "";

  refreshDate() {
    update();
  }

  double finalprice = 0;
  double valueDiscount = 0;

  doDiscout(double valuDiscon) {
    return valuDiscon * 0.5;
  }

  doPrice() async {
    var hargaAwal = double.parse(view!.item['price'].toString());
    var discont = valueDiscount;
    var discountPrice = (hargaAwal * discont);
    var newPrice = hargaAwal - discountPrice;
    finalprice = newPrice;
  }

  doAdd() async {
    if (selectedDay == "") {
      Get.dialog(const Text("data kosong"));
      return;
    }

    if (selectedTime == "") {
      Get.dialog(const Text("data kosong"));
      return;
    }

    debugPrint("product: ${view!.item}");
    debugPrint("finalPrice: $finalprice");
    debugPrint("hari: $selectedDay");
    debugPrint("waktu: $selectedTime");

    await FirebaseFirestore.instance.collection("addDoctor").add({
      "doctor": view!.item,
      "time": selectedTime,
      "day": selectedDay.value,
    });
    Get.back();
  }
}
