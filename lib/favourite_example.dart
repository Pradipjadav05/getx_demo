import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_demo/favourite_controller.dart';

class FavouriteExample extends StatefulWidget {
  const FavouriteExample({super.key});

  @override
  State<FavouriteExample> createState() => _FavouriteExampleState();
}

class _FavouriteExampleState extends State<FavouriteExample> {

  FavouriteController favouriteController = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite Example"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: favouriteController.fruits.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(favouriteController.fruits[index].toString()),
              trailing: Obx((){
                return Icon(
                  Icons.favorite,
                  color: favouriteController.favouriteItem.contains(favouriteController.fruits[index].toString())
                      ? Colors.red
                      : Colors.white,
                );
              }),
              onTap: () {
                if (favouriteController.favouriteItem.contains(favouriteController.fruits[index].toString())) {
                  favouriteController.removeFavourite(favouriteController.fruits[index].toString());
                } else {
                  favouriteController.addFavourite(favouriteController.fruits[index].toString());
                }
              },
            ),
          );
        },
      ),
    );
  }
}
