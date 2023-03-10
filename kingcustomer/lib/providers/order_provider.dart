import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kingcustomer/providers/customer_provider.dart';
import '../models/orders_model.dart';

class OrdersProvider with ChangeNotifier {
  List<OrdersModel> _list = [];

  List<OrdersModel> get getList => _list;

  final loggedInUser = currentUserID;
  void clearList() {
    _list.clear();
    notifyListeners();
  }

  Future<void> fetch() async {
    if (loggedInUser != null) {
      await FirebaseFirestore.instance
          .collection("orders")
          .doc(loggedInUser)
          .collection("orderDetails")
          .get()
          .then(
            (QuerySnapshot<Map<String, dynamic>> snapshot) => {
              _list = [],
              for (var doc in snapshot.docs)
                {
                  _list.insert(
                    0,
                    OrdersModel.fromMap(map: doc.data(), orderID: doc.id),
                  ),
                },
            },
          );
      notifyListeners();
    }
  }

  Future<void> uploadData(
      {String? aggrementID,
      String? serviceTotal,
      String? inventoryTotal,
      String? grandTotal,
      String? status,
      String? logsID,
      required String contractorID}) async {
    final orderID = await FirebaseFirestore.instance
        .collection("orders")
        .doc(loggedInUser)
        .collection("orderDetails")
        .add({
      "aggrementID": aggrementID,
      "serviceTotal": serviceTotal,
      "inventoryTotal": inventoryTotal,
      "grandTotal": grandTotal,
      "logsID": logsID,
      "status": status,
    });
    await FirebaseFirestore.instance
        .collection("orders")
        .doc(contractorID)
        .collection("orderDetails")
        .doc(orderID.id)
        .set({
      "aggrementID": aggrementID,
      "serviceTotal": serviceTotal,
      "inventoryTotal": inventoryTotal,
      "grandTotal": grandTotal,
      "logsID": logsID,
      "status": status,
    });
    _list.insert(
        0,
        OrdersModel(
            aggrementID: aggrementID,
            grandTotal: grandTotal,
            inventoryTotal: inventoryTotal,
            logsID: logsID,
            serviceTotal: serviceTotal,
            status: status));
    notifyListeners();
  }

  OrdersModel getOrderByID(String aggrementID) {
    return _list.firstWhere(
        (element) => element.aggrementID!.trim() == aggrementID.trim());
  }
}
