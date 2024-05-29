
import 'package:get/get.dart';

class FavouriteController extends GetxController{

  RxList<String> fruits = ["Apple", "Orange", "Mango", "Watter Lemon", "Banana"].obs;
  RxList favouriteItem = [].obs;


  addFavourite(String item){
    favouriteItem.add(item);
  }

  removeFavourite(String item){
    favouriteItem.remove(item);
  }
}