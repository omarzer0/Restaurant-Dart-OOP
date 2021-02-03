import 'Recipe.dart';

class Menu {
  List<Recipe> recipes = [];

  Menu() {
    recipes.add(Recipe('fish', 15, 'food', 1));
    recipes.add(Recipe('chicken', 20, 'food', 2));
    recipes.add(Recipe('meet', 30, 'food', 3));
    recipes.add(Recipe('teaMilk', 2, 'juice', 4));
    recipes.add(Recipe('coffee', 5, 'juice', 5));
    recipes.add(Recipe('juice', 7, 'juice', 6));
  }

  void printTheMenu() {
    var isFirstTime = true;
    print('Food\t\tprice\t\torder number');
    recipes.forEach((recipe) {
      if (recipe.type == 'juice' && isFirstTime) {
        print('Juice-------------------------');
        isFirstTime = false;
      }
      print(
          '${recipe.name}\t\t${recipe.price.toStringAsFixed(2)}\t\t${recipe.orderNumber}');
    });

    print('\nPlease enter the order number and how many items of it:'
        '\nWrite order to finish the order');
  }
}
