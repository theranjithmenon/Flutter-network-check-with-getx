import 'package:get/get.dart';

class NumberController extends GetxController {
  var count = 0.obs;
  increment() => count++;
}
