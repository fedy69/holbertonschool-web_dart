import "4-util.dart";
import 'dart:async';
import 'package:flutter/material.dart';

Future<int> calculateTotal(int userId) async {
  var user = await fetchUserData(userId);
  var orders = await fetchUserOrders(userId);
  int totalPrice = 0;

  for (var order in orders) {
    var productName = order['productName'];
    try {
      var productPrice = await fetchProductPrice(productName);
      totalPrice += productPrice;
    } catch (e) {
      return -1;
    }
  }

  return totalPrice;
}
