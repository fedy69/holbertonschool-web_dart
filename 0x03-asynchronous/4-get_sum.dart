import '4-util.dart';
import "dart:convert";

Future<double> calculateTotal() async {
  try {
    final user = await fetchUserData();
    final id = json.decode(user)["id"];
    final products = await fetchUserOrders(id);

    double totalPrice = 0.0;
    final productNames = json.decode(products).cast<String>();

    for (String product in productNames) {
      final price = await fetchProductPrice(product);
      totalPrice += json.decode(price) as double;
    }

    return totalPrice;
  } catch (e) {
    return -1;
  }
}
