import 'package:get/get.dart';

class IntroScreenController extends GetxController{
  final List booksCategory = const <String>[
    "Anatomy",
    "Physical Therapy",
    "Military Medicine",
    "About Feces",
    "Physical Therapy",
    "ENT",
    "Anatomy",
    "Physical Therapy",
    "Military Medicine",
    "About Feces",
    "Physical Therapy",
    "ENT",
  ];

  final List selectedBookCategory = <String>[];
   RxList<bool> selectedBookCategoryIndex = <bool>[].obs;

  addToList(int index){
    selectedBookCategory.add(booksCategory[index]);
  }
  removeFromList(int index){
    selectedBookCategory.remove(booksCategory[index]);
  }

  @override
  void onInit() {
    selectedBookCategoryIndex.value = List.generate(booksCategory.length, (index) => false);
    super.onInit();
  }
}