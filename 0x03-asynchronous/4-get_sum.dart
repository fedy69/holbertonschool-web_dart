import "dart:convert";

Future<double> calculateTotal() async {
  try {
    final user = await fetchUserData();
    final id = json.decode(user)["id"];
    final products = await fetchUserOrders(id);

    double totalPrice = 0.0;
    final productNames = json.decode(products).cast<String>(); // Ensure products is a List<String>

    for (String product in productNames) {
      final price = await fetchProductPrice(product);
      totalPrice += json.decode(price) as double; // Ensure price is a double
    }

    return totalPrice;
  } catch (e) {
    return -1;
  }
}
