import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    final userData = await fetchUserData();
    final userId = json.decode(userData)['id'];

    final userOrdersData = await fetchUserOrders(userId);
    final userOrders = json.decode(userOrdersData).cast<String>();

    final totalPrice = await Future<double>.value(userOrders.fold<double>(0, (total, order) async {
      final productPrice = await json.decode(await fetchProductPrice(order)) as double;
      return total + productPrice;
    }));

    return totalPrice;
  } catch (error) {
    return -1;
  }
}
