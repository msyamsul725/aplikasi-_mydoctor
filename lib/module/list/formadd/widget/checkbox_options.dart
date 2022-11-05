import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class SCheckBox extends StatefulWidget {
  final String? id;
  String? value;
  final Function(dynamic value) onChanged;
  final String? label;

  final int? price;

  SCheckBox({
    Key? key,
    required this.id,
    required this.price,
    this.value,
    required this.onChanged,
    this.label,
  }) : super(key: key);

  @override
  State<SCheckBox> createState() => _SCheckBoxState();
}

class _SCheckBoxState extends State<SCheckBox> implements InputControllerState {
  String? inputValue;
  bool? isChecked = false;
  @override
  setValue(value) {
    inputValue = value;
    setState(() {});
  }

  @override
  getValue() {
    return inputValue;
  }

  @override
  void initState() {
    super.initState();
    inputValue = widget.value;
    inputControllers[widget.id!] = this;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: isChecked,
            activeColor: Colors.blue,
            onChanged: (value) {
              setState(() {
                isChecked = value;
                widget.onChanged(value);
              });
            }),
        const SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${widget.label}",
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Text(
          "\$${widget.price}",
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
