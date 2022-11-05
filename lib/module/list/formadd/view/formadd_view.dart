import 'package:fhe_template/core.dart';
import 'package:fhe_template/services/doctor_specialist.dart';
import 'package:fhe_template/shared/widget/rating/rating.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class FormaddView extends StatelessWidget {
  const FormaddView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FormaddController>(
      init: FormaddController(),
      builder: (controller) {
        controller.view = this;
        bool loadingS = false;

        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff48B3EF),
            title: const Text("Formadd"),
            actions: [
              Obx(
                () => ElevatedButton.icon(
                  icon: const Icon(Icons.save),
                  label: const Text("Save"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff48B3EF)),
                  onPressed: controller.isLoading.value
                      ? null
                      : () => controller
                          .doSave(), // onPressed: () => controller.doSave(),
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: Obx(
                      () => controller.isLoading.value
                          ? LoadingAnimationWidget.discreteCircle(
                              color: Colors.blue, size: 40.0)
                          : Column(
                              children: [
                                //body

                                const QTextField(
                                  id: "doctor_name",
                                  label: "Doctor Name",
                                ),
                                QImagePicker(
                                    id: "photo",
                                    label: "Photo",
                                    onChanged: (text) {
                                      controller.photo = text;
                                    }),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 10.0,
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  child: const Text(
                                    "Specialist",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                SizedBox(
                                  height: 40.0,
                                  width: MediaQuery.of(context).size.width,
                                  child: ListView.builder(
                                    itemCount:
                                        DoctorSpecialist.specialist.length,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      var item =
                                          DoctorSpecialist.specialist[index];

                                      return InkWell(
                                        onTap: () {
                                          controller.selectedSpecialist =
                                              item['label'].toString();
                                          controller.update();
                                        },
                                        child: Container(
                                          margin: const EdgeInsets.all(4.0),
                                          width: 100.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: (controller
                                                        .selectedSpecialist ==
                                                    item['label'])
                                                ? Colors.blue
                                                : Colors.red[200],
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(
                                                16.0,
                                              ),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              item["label"],
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                const ExRating(
                                  id: "rating",
                                  label: "Rating",
                                ),
                                const QTextArea(
                                  id: "description",
                                  label: "Desription",
                                  value:
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                )
                              ],
                            ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
