import 'package:flutter/foundation.dart';
import 'package:vetdiary/model/utility.dart';

class AddCausalAgentModel extends ChangeNotifier {
  //State Values to getString title;
  String _title = "";
  TitleWithIcon _type;
  String _nucleus;
  List<String> _hosts;
  List<String> _characteristics;
  List<String> _sensitivity;

  //Expandable Lists Controller
  int _expandedIndex;

  //Getters to Maintain State
  String get title => _title;
  TitleWithIcon get type => _type;
  String get nucleus => _nucleus;
  List<String> get hosts => _hosts;
  List<String> get characteristics => _characteristics;
  List<String> get sensitivity => _sensitivity;
  int get expandedIndex => _expandedIndex;

  //Function to set state and notify listeners
  void addTitle(String title) {
    //Check the validity of the title
    if (title != null) {
      this._title = title;
    } else {
      this._title = "";
    }
    print(title);
  }

  void selectType(TitleWithIcon option) {
    //Check Validity of option
    if (option != null) {
      //Check if the option is already selected
      if (this._type == option)
        //If Selected Remove it
        this._type = null;
      else
        //Else remove it
        this._type = option;
    }
    notifyListeners();
  }

  void selectGramStaining(String stain) {
    //Check the validity of the incoming data
    if (stain != null) {
      //Check if the stain is already selected
      //If already selected remove it
      //Else add the option
      if (this._nucleus == stain)
        this._nucleus = null;
      else
        this._nucleus = stain;
    }
    notifyListeners();
  }

  void addHosts(List<String> hosts) {
    //Check the validity of the incoming data
    if (hosts != null && hosts != this._hosts) {
      //Check if the host is already added
      this._hosts = hosts;
    }
    print(this._hosts);

    //Dont Notify Listeners Because the state is managed by interner provider
  }

  void swapExpanded(int index) {
    if (index != null) {
      if (this._expandedIndex == index)
        this._expandedIndex = null;
      else
        this._expandedIndex = index;

      notifyListeners();
    }
  }
}
