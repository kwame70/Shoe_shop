import "package:flutter/material.dart";
import "package:shoe_app/products.dart";

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: ListView.builder(
          itemCount: cart.length,
          itemBuilder: (context, index) {
            final cartItems = cart[index];
            return ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(cartItems["imageUrl"] as String),
              ),
              title: Text(
                cartItems["title"].toString(),
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text(
                "Size: ${cartItems["size"]}",
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete_forever_rounded,
                  color: Colors.red,
                ),
              ),
            );
          }),
    );
  }
}
