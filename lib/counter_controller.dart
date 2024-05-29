
import 'dart:developer';

import 'package:get/get.dart';

class CounterController extends GetxController{
  // create observable int variable, means it observed this variable whenever it will change.
  // Rx - Pre word is GetX define datatype
  RxInt count = 1.obs;

  incrementCounter(){
    count.value++;
    log(count.value.toString());
  }
}