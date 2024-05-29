# get_x_demo

A new Flutter project.

## Getting Started

Add Dependency:
```dart
get:
```

**GetX**
- GetX is a fast, stable, and light state management library in flutter.
- There are three principles of GetX: 1. Performance, 2. Productivity and 3. Organization.
- it used global context.

**GetMaterialApp**
- used to access utility of GetX.


**Utility**
- SnackBar:
    ```dart
      Get.snackbar(
      "GetX SnackBar", "display SnackBar without needing context",
      icon: Icon(Icons.info));
    ```
- Alert Dialog:
  ```dart
    Get.defaultDialog()
  ```
 
- Change Theme:
  ```dart
   Get.changeTheme(theme);
  ```

- Navigate Screen
    ```dart
     // Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenOne(),));
     Get.to(const ScreenOne());
    ```
  And
  ```dart
  // Navigator.pop(context);
  Get.back();
  ```
  
- Routes and pass argument
  define pages
  ```dart
   getPages: [
    GetPage(name: "/", page: () => const HomeScreen()),
    GetPage(name: "/navigatorRoutingScreen", page: () => const NavigatorAndRouting()),
    GetPage(name: "/screenOne", page: () => ScreenOne()),
    GetPage(name: "/screenTwo", page: () => const ScreenTwo()),
  ],
  ```
  navigate with arguments:
  ```dart
   Get.toNamed("/screenTwo", arguments: ["pradip Jadav"]);
  ```

- Height & Width
  ```dart
    // MediaQuery.of(context).size.height * 0.2
    Get.height
    Get.width
  ```
  
- Localization
  ```dart
    Get.updateLocale()
  ```
  
