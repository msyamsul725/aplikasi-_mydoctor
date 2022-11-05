import 'abstract/input_control/input_control.dart';

class InputA {
  static Map<String, dynamic> values = {};
  static Map<String, InputControlState> inputController = {};

  static set(key, value) {
    values[key] = value;
  }

  static get(key) {
    return values[key];
  }

  static clear(key) {
    values.remove(key);
  }

  static resetValues() {
    inputController.forEach((key, value) {
      value.resetValue();
    });
  }
}
