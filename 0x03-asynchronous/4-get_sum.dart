import '4-util.dart';
import "dart:convert";

calculateTotal() async {
  try {
    var userData = await fetchUserData();
    Map data = jsonDecode(userData);
    var orders = await fetchUserOrders(data['id']);
    double total = 0.0;
    for (var order in jsonDecode(orders)) {
      var orderPrice = await fetchProductPrice(order);
      total += double.parse(orderPrice);
    }
    return (total);
  }
  catch (err){
    return(-1);
  }
}