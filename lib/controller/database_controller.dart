import 'package:appdemorealm/realm/product_model.dart';
import 'package:flutter/material.dart';
import 'package:realm/realm.dart';

import '../main.dart';

class DataBaseController with ChangeNotifier {
  late RealmResults<Product> products;
  final realm = Realm(Configuration.inMemory([Product.schema]));
  void saveProduct(String price, String productName) async {
    try {
      if (app.currentUser != null) {
        final newProduct = Product(ObjectId(), productName, price: price);

        await realm.write(() {
          realm.add(newProduct, update: true);
        });
        print('data added ////////////////');
        getAllProducts();
      }

      // Get.snackbar('Success', 'Product saved successfully');
    } catch (e) {
      // Get.snackbar('Error', 'Failed to save product');
      print(e);
    }
  }

  getAllProducts() {
    try {
      products = realm.all<Product>();

      notifyListeners();
    } catch (e) {
      print(e.toString());
    }
  }
}
