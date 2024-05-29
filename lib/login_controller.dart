import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  RxBool isLoading = false.obs;

  Future<void> loginApi() async {
    isLoading.value = true;
    try {
      final response = await post(
        Uri.parse("https://reqres.in/api/login"),
        body: {
          "email": emailController.value.text,
          "password": passwordController.value.text
        },
      );
      final data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        isLoading.value = false;
        Get.snackbar("Login Success", "Now are access the data");
        print(data);
      }
      else{
        isLoading.value = false;
        Get.snackbar("Login Failed", data['error']);
      }
    } catch (e) {
      isLoading.value = false;
      print(e.toString());
    }
  }
}
