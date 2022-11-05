import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../view/dashboard_view.dart';

class DashboardController extends GetxController {
  DashboardView? view;

  List products = [];

  loadMovieTrending() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    products = (response.data['data'] as List);
    update();
  }
}
