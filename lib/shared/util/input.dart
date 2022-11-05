Map<String, InputControllerState> inputControllers = {};
Map<String, dynamic> values = {};

class Input {
  // var photo = Input.get("photo");
  static get(String id) {
    return inputControllers[id]!.getValue();
  }

  // static set(String id) {}
  static set(key, value) {
    values[key] = value;
  }
}

class InputControllerState {
  setValue(value) {}
  getValue() {}
}
