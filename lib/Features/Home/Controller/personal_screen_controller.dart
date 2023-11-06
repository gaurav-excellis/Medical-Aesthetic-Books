import 'package:get/get.dart';

class PersonalScreenController extends GetxController{
  List saveAsList = ["Home", "Work", "Friends and family", "Others"];
  List saveAsIconsList = ["address_icon.png","work_icon.png", "friends_icon.png", "location_icon2.png"];

  RxInt selectedSaveAsIndex = 0.obs;
  

  changeIndex(int newIndex){
    selectedSaveAsIndex.value = newIndex;
  }
}