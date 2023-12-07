import 'dart:developer';

import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

class MyDrawerController extends GetxController {
  final zoomDrawerController = ZoomDrawerController();


  void toggleDrawer(){
    log("Toggle drawer");
    zoomDrawerController.toggle?.call();
    update();
  }
}
