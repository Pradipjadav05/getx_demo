import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_demo/login_controller.dart';

class LoginWithRestAPI extends StatefulWidget {
  const LoginWithRestAPI({super.key});

  @override
  State<LoginWithRestAPI> createState() => _LoginWithRestAPIState();
}

class _LoginWithRestAPIState extends State<LoginWithRestAPI> {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login With Rest API Demo"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: loginController.emailController.value,
                decoration: const InputDecoration(
                    isDense: true,
                    hintText: "Enter Email",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: loginController.passwordController.value,
                decoration: const InputDecoration(
                    isDense: true,
                    hintText: "Enter Password",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 15),
              Obx(() {
                return loginController.isLoading.value
                    ? const CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: () async {
                          await loginController.loginApi();
                        },
                        child: const Text("Login"));
              }),

              const Divider(),
              const Row(
                children: [
                  Text("Email:"),
                  SelectableText("eve.holt@reqres.in"),
                ],
              ),

              const Row(
                children: [
                  Text("Password:"),
                  SelectableText("cityslicka"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
