import 'package:fhe_template/module/dashboard/widget/banner.dart';
import 'package:fhe_template/module/dashboard/widget/header.dart';
import 'package:fhe_template/module/dashboard/widget/headerA.dart';
import 'package:fhe_template/module/dashboard/widget/menu.dart';
import 'package:fhe_template/module/dashboard/widget/notif.dart';
import 'package:fhe_template/module/dashboard/widget/scheduleDoctor.dart';
import 'package:fhe_template/module/dashboard/widget/search.dart';
import 'package:flutter/material.dart';
import '../controller/dashboard_controller.dart';

import 'package:get/get.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Notif(),
                  const HeaderA(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const SearchA(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const BannerB(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const HeaderB(),
                  const MenuMedical(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const HeaderB(),
                  const ScheduleDoctor(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      "New Product",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  const Divider(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
