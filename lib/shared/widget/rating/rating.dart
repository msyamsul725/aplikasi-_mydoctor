import 'package:fhe_template/shared/widget/input.dart';
import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../abstract/input_control/input_control.dart';

class ExRating extends StatefulWidget {
  final String id;
  final String label;
  final double? value;
  final dynamic onChanged;
  final double? itemSize;

  final double? labelFontSize;
  final double? valueFontSize;

  final bool? visibleIf;

  final bool? disableTranslate;
  final bool? hideLabel;

  const ExRating({
    Key? key,
    required this.id,
    this.label = "",
    this.value,
    this.onChanged,
    this.itemSize,
    this.labelFontSize,
    this.valueFontSize,
    this.disableTranslate = false,
    this.visibleIf,
    this.hideLabel = false,
  }) : super(key: key);

  @override
  ExRatingState createState() => ExRatingState();
}

class ExRatingState extends State<ExRating> implements InputControlState {
  double selectedValue = 0.0;
  @override
  void initState() {
    super.initState();
    selectedValue = widget.value ?? 0.0;
    InputA.set(widget.id, selectedValue);
    InputA.inputController[widget.id] = this;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  setValue(value) {
    selectedValue = value;
    InputA.set(widget.id, selectedValue);
    setState(() {});
  }

  @override
  resetValue() {
    setState(() {
      selectedValue = 0;
      InputA.set(widget.id, selectedValue);
    });
  }

  @override
  void didUpdateWidget(ExRating oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.visibleIf == false) {
      return Container();
    }

    getLabel() {
      return Container(
        margin: const EdgeInsets.only(right: 20.0),
        child: Text(
          widget.label,
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.blueGrey,
          ),
        ),
      );
    }

    return Container(
      padding: EdgeInsets.all(widget.label.isNotEmpty ? 10.0 : 0.0),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (widget.label.isNotEmpty) getLabel(),
          SizedBox(
            height: 20.0,
            child: RatingBar.builder(
              initialRating: selectedValue,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: widget.itemSize ?? 28.0,
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                setValue(rating);
              },
            ),
          )
        ],
      ),
    );
  }
}
