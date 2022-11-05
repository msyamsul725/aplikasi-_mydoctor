import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../formadd/view/formadd_view.dart';

class buttonAdd extends StatefulWidget {
  const buttonAdd({
    Key? key,
  }) : super(key: key);

  @override
  State<buttonAdd> createState() => _buttonAddState();
}

class _buttonAddState extends State<buttonAdd> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        icon: const Icon(Icons.add),
        label: const Text("Add"),
        style:
            ElevatedButton.styleFrom(backgroundColor: const Color(0xff48B3EF)),
        onPressed: () => Get.to(const FormaddView()));
  }
}
