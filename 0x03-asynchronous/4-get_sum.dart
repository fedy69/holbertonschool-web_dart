import '4-util.dart';
import 'dart:convert';


Future<double> calculateTotal() async {
    try {
    return fetchUserData().then((data) {
        String id = json.decode(data)['id'];
        return fetchUserOrders(id).then((orders) async {
            double total = 0.0;
            for (var order in json.decode(orders)) {
                await fetchProductPrice(order).then((price) {
                    total += json.decode(price);
                });
            }
            return total;
        });
    });
    } catch (err) {
        print('error caught: $err');
        return -1;  
    }  
}
