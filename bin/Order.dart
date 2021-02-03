import 'dart:io';
import 'dart:math';

import 'Menu.dart';
import 'Receipt.dart';
import 'Recipe.dart';

class Order {
  var menu = Menu();

  List<Receipt> receipt = [];

  List<Receipt> getOrders() {
    menu.printTheMenu();
    var order;
    while (true) {
      order = stdin.readLineSync();
      if (order.toLowerCase().contains('order')) break;
      final split = order.split(' ');
      var numberOfOrders = isValidNumber(split[0]);
      if (numberOfOrders == -1) {
        print('enter a valid number of items to buy');
        continue;
      }
      var orderedRecipe = split[1];
      var price = recipeExist(orderedRecipe);
      if (price != -1) {
        receipt.add(Receipt(numberOfOrders, (orderedRecipe), price));
      } else {
        print('This order does not exist try again');
      }
    }
    return receipt;
  }

  double recipeExist(String orderedRecipe) {
    for (var recipe in menu.recipes) {
      if (recipe.name.toLowerCase() == orderedRecipe.toLowerCase()) {
        return recipe.price;
      }
    }
    return -1;
  }

  int isValidNumber(String numberString) {
    try {
      var number = int.parse(numberString);
      if (number < 1) throw e;
      return number;
    } catch (e) {
      return -1;
    }
  }
}
