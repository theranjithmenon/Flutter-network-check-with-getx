import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkController extends GetxController {
  final Connectivity connectivity = Connectivity();

  @override
  void onInit() {
    connectivity.onConnectivityChanged.listen(connectionStatus);
    super.onInit();
  }

  connectionStatus(ConnectivityResult connectivityResult) {
    if (connectivityResult == ConnectivityResult.none) {
      Get.rawSnackbar(
        backgroundColor: Colors.redAccent,
        icon: const Icon(Icons.network_check),
          messageText: const Text('Lost Internet Connection !!!'),
          isDismissible: false,
          duration: const Duration(days: 1));
    } else {
      if (Get.isSnackbarOpen) {
        Get.closeCurrentSnackbar();
      }
    }
  }
}
