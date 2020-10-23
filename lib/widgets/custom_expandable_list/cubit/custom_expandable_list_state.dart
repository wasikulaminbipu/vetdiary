part of 'custom_expandable_list_cubit.dart';

abstract class CustomExpandableListState extends Equatable {
  //variavles that contain state
  final int expandedIndex;

  const CustomExpandableListState({this.expandedIndex});

  @override
  List<Object> get props => [this.expandedIndex];

  bool isExpanded(int index);
}

class CustomExpandableListInitial extends CustomExpandableListState {
  CustomExpandableListInitial() : super();

  @override
  bool isExpanded(int index) {
    return false;
  }
}

class CustomExpandableListUpdated extends CustomExpandableListState {
  CustomExpandableListUpdated({int expandedIndex})
      : super(expandedIndex: expandedIndex);

  @override
  bool isExpanded(int index) {
    //Check the validity of the index
    //Also Check the validity of the ExpandedIndex
    //For Invalid Index Return False
    if (index == null || index < 0 || expandedIndex == null) return false;

    //Return if the index is expanded
    //Compare the index with expandedIndex and return
    return expandedIndex == index;
  }
}
