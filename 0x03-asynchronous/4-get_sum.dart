import "4-util.dart";
import "dart:convert";
import 'dart:async';

Future<double> calculateTotal() async {
  try {
    final user = await fetchUserData();
    final id = json.decode(user)["id"];
    final products = await fetchUserOrders(id);

    double totalPrice = 0.0;
    for (String product in json.decode(products)) {
      final price = await fetchProductPrice(product);
      totalPrice += json.decode(price);
    }

    return totalPrice;
  } catch (e) {
    return -1;
  }
}