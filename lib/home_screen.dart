import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_demo/counter_example.dart';
import 'package:get_x_demo/example_two.dart';
import 'package:get_x_demo/favourite_example.dart';
import 'package:get_x_demo/getx_localization.dart';
import 'package:get_x_demo/login_with_rest_api.dart';
import 'package:get_x_demo/navigator_routing.dart';

import 'height_width.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Demo"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // GetX Alert Dialog Example
            Card(
              child: ListTile(
                title: const Text("GetX Alert Dialog"),
                onTap: () {
                  Get.defaultDialog(
                    title: "Delete Chat",
                    // middleText - contains maximum 3 line.
                    // middleText: "Are you sure you want to delete chat.",
                    content: const Column(
                      children: [
                        Text("This is content part."),
                      ],
                    ),
                    confirm: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text("OK")),
                    cancel: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text("Cancel")),
                    // prevent to close dialog
                    barrierDismissible: false,
                    radius: 10,
                  );
                },
              ),
            ),

            // GetX Bottom Sheet Example
            Card(
              child: ListTile(
                title: const Text("GetX Bottom Sheet"),
                onTap: () {
                  Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(30.0)),
                      padding: const EdgeInsets.only(top: 35.0),
                      child: Column(
                        children: [
                          ListTile(
                            leading: const Icon(Icons.dark_mode),
                            title: const Text("Dark Theme"),
                            onTap: () {
                              var darkTheme = ThemeData(
                                primaryColor: Colors.blue,
                                brightness: Brightness.dark,
                                scaffoldBackgroundColor: Colors.black,
                                appBarTheme: const AppBarTheme(
                                  backgroundColor: Colors.black,
                                ),
                                // Add other theme properties here
                              );

                              Get.changeTheme(darkTheme);
                            },
                          ),
                          const Divider(),
                          ListTile(
                            leading: const Icon(Icons.dark_mode),
                            title: const Text("Light Theme"),
                            onTap: () {
                              var theme = ThemeData(
                                  primaryColor: Colors.blueGrey,
                                  brightness: Brightness.light,
                                  scaffoldBackgroundColor: Colors.white,
                                  appBarTheme: const AppBarTheme(
                                    backgroundColor: Colors.blueGrey,
                                  ),
                                  buttonTheme: const ButtonThemeData(
                                      buttonColor: Colors.blueGrey),
                                  floatingActionButtonTheme:
                                      const FloatingActionButtonThemeData(
                                    backgroundColor: Colors.blueGrey,
                                  )
                                  // Add other theme properties here
                                  );
                              Get.changeTheme(theme);
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            // routes & navigation
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NavigatorAndRouting(),
                      ));

                  // using routing getX
                  // Get.toNamed("/navigatorRoutingScreen");
                },
                title: const Text("Navigator & Routing"),
              ),
            ),

            // Height & Width
            Card(
              child: ListTile(
                title: const Text("Height & Width"),
                onTap: () {
                  Get.to(const HeightWidth());
                },
              ),
            ),

            // Localization
            Card(
              child: ListTile(
                title: const Text("Localization"),
                onTap: () {
                  Get.to(const GetXLocalization());
                },
              ),
            ),

            const Divider(),
            const Text("State Management"),
            const Divider(),
            Card(
              child: ListTile(
                title: const Text("Example-1"),
                subtitle: const Text("Counter Example"),
                onTap: () {
                  Get.to(const CounterExample());
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("Example-2"),
                onTap: () {
                  Get.to(const ExampleTwo());
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("Example-3"),
                subtitle: const Text("Favourite Example"),
                onTap: () {
                  Get.to(const FavouriteExample());
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("Example-4"),
                subtitle: const Text("Login with Rest API"),
                onTap: () {
                  Get.to(const LoginWithRestAPI());
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "GetX SnackBar",
            "display SnackBar without needing context",
            icon: const Icon(Icons.info),
            isDismissible: false,
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.blueGrey.withOpacity(0.8),
            colorText: Colors.white,
            dismissDirection: DismissDirection.horizontal,
            duration: const Duration(seconds: 10),
            mainButton:
                TextButton(onPressed: () {}, child: const Text("Click")),
          );
        },
      ),
    );
  }
}
