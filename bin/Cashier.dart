import 'Order.dart';
import 'Receipt.dart';

class Cashier {
  Cashier() {
    customerIsOrdering();
  }

  void customerIsOrdering() {
    var order = Order();
    var totalPrice = 0.0;
    var receipt = order.getOrders();
    print('Your receipt\nitems\t\tname\t\tprice\t\t');
    receipt.forEach((item) {
      print('${item.name}\t\t${item.price}\t\t${item.numberOfOrder}');
      totalPrice += item.numberOfOrder * item.price;
    });
    print('\nthe the total price ${totalPrice}');
    if (totalPrice >= 50) {
      print('price after discount ${totalPrice - (totalPrice * 14 / 100)}');
    }
    print('Time ${DateTime.now().hour}:'
        '${DateTime.now().minute}:'
        '${DateTime.now().second}');

    print('Date ${DateTime.now().year}:'
        '${DateTime.now().month}:'
        '${DateTime.now().day}');

    print('I hope you like our restaurant bye bye');
  }
}
