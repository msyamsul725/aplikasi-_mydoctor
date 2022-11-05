import 'package:fhe_template/utils/time_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';
import '../../../services/selected_date_services.dart';
import '../controller/product_detail_controller.dart';

import 'package:get/get.dart';

class ProductDetailView extends StatelessWidget {
  final Map item;
  const ProductDetailView({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductDetailController>(
      init: ProductDetailController(),
      builder: (controller) {
        controller.view = this;
        String content = item['description'];
        return Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
          ),
          bottomNavigationBar: Container(
            padding: const EdgeInsets.all(20.0),
            height: 90.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff48B3EF),
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(64.0),
                ),
              ),
              onPressed: () => controller.doAdd(),
              child: const Text("Make an appointment"),
            ),
          ),
          body: SingleChildScrollView(
            controller: ScrollController(),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2.2,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          item['photo'],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    controller: ScrollController(),
                    child: Container(
                      margin: const EdgeInsets.only(
                        top: 380.0,
                      ),
                      height: MediaQuery.of(context).size.height / 1.1,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 40.0,
                          ),
                          SizedBox(
                            height: 60.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: 200.0,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item['doctor_name'],
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30.0,
                                        child: Text(
                                          item['specialist'],
                                          textAlign: TextAlign.start,
                                          style: const TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 60.0,
                                  width: 80.0,
                                  decoration: const BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12.0),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.chat_bubble,
                                    size: 26.0,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 40.0,
                                ),
                                Container(
                                  height: 60.0,
                                  width: 80.0,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 18, 205, 205),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12.0),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.call,
                                    color: Colors.white,
                                    size: 26.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                RatingBar.builder(
                                  initialRating: item['rating'],
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  itemCount: 5,
                                  itemSize: 22.0,
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    item['rating'] = rating;
                                  },
                                ),
                                const Text(
                                  "  (2244 Reviewed)",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 12.0,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 60.0,
                                  ),
                                  child: const Text(
                                    "See all reviews",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Divider(
                            indent: 10.0,
                            endIndent: 10.0,
                            thickness: 1,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4.0, horizontal: 10.0),
                            width: MediaQuery.of(context).size.width,
                            child: const Text(
                              "About",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ReadMoreText(
                              content,
                              trimLines: 3,
                              textAlign: TextAlign.justify,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: "Show More",
                              trimExpandedText: "Show Less",
                              lessStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                              moreStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                              style: const TextStyle(
                                fontSize: 16.0,
                                height: 1.4,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    16.0,
                                  ),
                                ),
                              ),
                              child: ListView.builder(
                                itemCount: 30,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  var item =
                                      DateTime.now().add(Duration(days: index));

                                  return Obx(
                                    () {
                                      return InkWell(
                                        onTap: () =>
                                            controller.selectedDay.value = item,
                                        child: Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 5.0),
                                          height: 60.0,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            color: (controller
                                                        .selectedDay.value ==
                                                    null)
                                                ? Colors.grey
                                                : controller.selectedDay.value!
                                                        .isAtSameMomentAs(item)
                                                    ? const Color(0xff48B3EF)
                                                    : Colors.grey[200],
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(24.0),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              const SizedBox(
                                                height: 30.0,
                                              ),
                                              // Text(
                                              //   item.shortMonthName,
                                              //   style: const TextStyle(
                                              //     color: Colors.blue,
                                              //     fontWeight: FontWeight.bold,
                                              //   ),
                                              // ),
                                              // const SizedBox(
                                              //   height: 10.0,
                                              // ),

                                              (controller.selectedDay.value ==
                                                      null)
                                                  ? Text(
                                                      item.shortMonthName,
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    )
                                                  : (controller
                                                          .selectedDay.value!
                                                          .isAtSameMomentAs(
                                                              item))
                                                      ? Text(
                                                          item.shortMonthName,
                                                          style:
                                                              const TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.white,
                                                          ),
                                                        )
                                                      : Text(
                                                          item.shortMonthName,
                                                          style: const TextStyle(
                                                              color:
                                                                  Colors.blue,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                              const SizedBox(
                                                height: 10.0,
                                              ),
                                              (controller.selectedDay.value ==
                                                      null)
                                                  ? Text(
                                                      "${item.day}",
                                                      style: const TextStyle(
                                                        color: Colors.black,
                                                      ),
                                                    )
                                                  : (controller
                                                          .selectedDay.value!
                                                          .isAtSameMomentAs(
                                                              item))
                                                      ? CircleAvatar(
                                                          radius: 12,
                                                          backgroundColor:
                                                              Colors.white,
                                                          child: Text(
                                                            "${item.day}",
                                                            style:
                                                                const TextStyle(
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        )
                                                      : Text(
                                                          "${item.day}",
                                                          style: const TextStyle(
                                                              color:
                                                                  Colors.blue,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 240.0,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    16.0,
                                  ),
                                ),
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 4.0),
                                    width: MediaQuery.of(context).size.width,
                                    child: const Text(
                                      "Start Time",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Wrap(
                                      direction: Axis.horizontal,
                                      runSpacing: 12,
                                      spacing: 30,
                                      children: List.generate(
                                          SelectedDateServices
                                              .selectedTime.length, (index) {
                                        var item = SelectedDateServices
                                            .selectedTime[index];

                                        return InkWell(
                                          onTap: () {
                                            controller.selectedTime =
                                                item.toString();
                                            controller.refresh();
                                          },
                                          child: Container(
                                            height: 70.0,
                                            width: 160,
                                            decoration: BoxDecoration(
                                              color: (item.toString() ==
                                                      controller.selectedTime)
                                                  ? const Color(0xff48B3EF)
                                                  : Colors.grey[400],
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(
                                                  10.0,
                                                ),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                item,
                                                style: TextStyle(
                                                  color: (item.toString() ==
                                                          controller
                                                              .selectedTime)
                                                      ? Colors.white
                                                      : Colors.black,
                                                  fontSize: 15.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      })),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
