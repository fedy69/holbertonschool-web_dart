import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = json.decode(userData);
    String userId = userMap['id'];

    String userOrdersData = await fetchUserOrders(userId);
    List<dynamic> userOrders = json.decode(userOrdersData);

    double totalPrice = 0.0;

    for (var order in userOrders) {
      String productName = order;
      String productPriceData = await fetchProductPrice(productName);
      double productPrice = json.decode(productPriceData);
      totalPrice += productPrice;
    }

    return totalPrice;
  } catch (error) {
    return -1;
  }
}