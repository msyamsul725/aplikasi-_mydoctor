import 'package:firebase_auth/firebase_auth.dart';

import 'package:get/get.dart';
import '../../main_navigation/view/main_navigation_view.dart';
import '../view/Login_view.dart';

class LoginController extends GetxController {
  LoginView? view;

  var isloading = false.obs;

  doLoginEmail() async {
    try {
      isloading.value = true;
      await Future.delayed(const Duration(seconds: 3));
      isloading.value = false;

      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: "user@demo.com",
        password: "123456",
      );
      // UserService.doSaveUserDataEmail(
      //     email: "user@demo.com", name: "user no fount");
      Get.offAll(const FloatMainNavigationView());
    } on Exception catch (_) {
      Get.snackbar("Gagal", "Periksa Email & Password Kembali");
    }
  }
}
