import 'package:fhe_template/shared/util/input.dart';
import 'package:flutter/material.dart';

class ScheckBox extends StatefulWidget {
  final String id;
  final List<String>? value;
  final List<Map<String, dynamic>>? items;
  final Function(List data)? onChanged;
  final String? label;
  final TextInputType? keyboardType;
  final String? total;

  const ScheckBox({
    Key? key,
    required this.id,
    required this.items,
    this.value,
    this.onChanged,
    this.label = "",
    this.keyboardType,
    this.total,
  }) : super(key: key);

  @override
  State<ScheckBox> createState() => _ScheckBoxState();
}

class _ScheckBoxState extends State<ScheckBox> implements InputControllerState {
  List<String> selectedValues = [];

  @override
  void initState() {
    super.initState();
    if (widget.value == null) {
      selectedValues = [];
    } else {
      for (var i = 0; i < widget.value!.length; i++) {
        selectedValues.add(widget.value![i]);
      }
    }
    Input.set(widget.id, selectedValues);
    inputControllers[widget.id] = this;
  }

  @override
  setValue(value) {
    selectedValues = value;
    Input.set(widget.id, selectedValues);
    setState(() {});
  }

  @override
  resetValue() {
    setState(() {
      Input.set(widget.id, []);
      selectedValues = widget.items![0]["label"]["price"];
    });
  }

  @override
  getValue() {
    return selectedValues;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (widget.label!.isNotEmpty) ...[
            Padding(
              padding: const EdgeInsets.only(
                left: 4.0,
                right: 4.0,
                top: 4.0,
                bottom: 4.0,
              ),
              child: Text("${widget.label}"),
            ),
          ],
          Column(
            children: List.generate(widget.items!.length, (index) {
              var item = widget.items![index];
              bool selected =
                  selectedValues.contains(item["price"]) ? true : false;

              return Container(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                  top: 2.0,
                  bottom: 2.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(" ${item["label"]}"),
                    ),
                    Expanded(
                      child: Text("\$ ${item["price"]}"),
                    ),
                    Checkbox(
                      value: selected,
                      onChanged: (value) {
                        if (value == true) {
                          selectedValues.add(item["price"]);
                        } else {
                          selectedValues.remove(item["price"]);
                        }

                        Input.set(widget.id, selectedValues);
                        setState(() {});
                      },
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
