import 'package:flutter/foundation.dart';

class CustomAddOptionModel extends ChangeNotifier {
  List<String> _options = [];

  //---------------Setters to View State----------------
  List<String> get options => this._options.toList();

  //--------------Setters to Set the State----------
  //Add Option to the state options
  void addOption(String option) {
    //Check the validity of the option
    if (option != null &&
        option.isNotEmpty &&
        !this._options.contains(option)) {
      this._options.add(option);
      notifyListeners();
    }
  }

  //Add Multiple Options
  void addMultipleOption(List<String> options) {
    if (options != null) this._options = options;
    notifyListeners();
  }

  //Remove options if exist from the state options
  void removeOption(String option) {
    //Check the validity of the option
    if (option != null && option.isNotEmpty && this._options.contains(option)) {
      this._options.remove(option);
      notifyListeners();
    }
  }
}
