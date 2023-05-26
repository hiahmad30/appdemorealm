import 'package:appdemorealm/controller/database_controller.dart';
import 'package:appdemorealm/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController productNameController = TextEditingController();

  final TextEditingController priceController = TextEditingController();

  final databaseController = DataBaseController();

  void _handlelogout(BuildContext context) async {
    try {
      await app.removeUser(app.currentUser!);
    } on Exception catch (error) {
      print(error.toString());
      return;
    }
    if (!mounted) {
      return;
    }
    Navigator.pushReplacementNamed(context, 'login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              _handlelogout(context);
              // authController.signOut();
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: productNameController,
              decoration: InputDecoration(
                labelText: 'Product Name',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Price',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                databaseController.saveProduct(
                    productNameController.text, priceController.text);

                priceController.clear();
                productNameController.clear();
              },
              child: Text('Save'),
            ),
            SizedBox(height: 32.0),
            Expanded(
              child: _buildProductList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductList() {
    return Consumer<DataBaseController>(
        builder: (context, provider, child) => ListView.builder(
              itemCount: provider.products.length,
              itemBuilder: (context, index) {
                final product = provider.products[index];

                return ListTile(
                  title: Text(product.name),
                  subtitle: Text(product.price ?? "N/A"),
                );
              },
            ));
  }
}
