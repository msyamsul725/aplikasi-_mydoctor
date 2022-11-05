import 'package:flutter/material.dart';

class CekBoxExample extends StatefulWidget {
  final String value;
  final Function(List data) onChanged;
  final String? label;
  final String? harga;
  List? item;

  CekBoxExample({
    Key? key,
    required this.value,
    required this.onChanged,
    this.label,
    this.harga,
    this.item,
  }) : super(key: key);

  @override
  State<CekBoxExample> createState() => _CekBoxExampleState();
}

class _CekBoxExampleState extends State<CekBoxExample> {
  bool status = false;
  List selectedValues = [];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.item!.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var items = widget.item![index];
        // var statusItem = items['status'] as bool;

        bool selected = selectedValues.contains(items['price']) ? true : false;

        return Row(
          children: [
            Checkbox(
                value: selected,
                onChanged: (value) {
                  if (value == true) {
                    selectedValues.add(items['price']);
                  } else {
                    selectedValues.remove(items['price']);
                  }

                  widget.onChanged(selectedValues);

                  setState(() {});
                }),
            Expanded(
              child: Text(
                "${items['title']}",
                style: const TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Expanded(
              child: Text(
                "\$ ${items['price']}",
                style: const TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
