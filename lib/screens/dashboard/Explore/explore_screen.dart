import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quickcart/constants.dart';

class Product {
  final int id;
  final String title;
  final double price;
  final String imageUrl;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.imageUrl,
  });
}

final List<Product> products = [
  Product(
    id: 1,
    title: "Wireless Earbuds",
    price: 49.99,
    imageUrl:
        "https://w7.pngwing.com/pngs/188/683/png-transparent-headphones-jbl-mobile-phones-wireless-bluetooth-bluetooth-stereophonic-sound-internet-electronic-device-thumbnail.png",
  ),
  Product(
    id: 2,
    title: "Smart Watch",
    price: 99.99,
    imageUrl:
        "https://w7.pngwing.com/pngs/882/409/png-transparent-smart-watch-thumbnail.png",
  ),
  Product(
    id: 3,
    title: "Gaming Headset",
    price: 79.99,
    imageUrl:
        "https://w7.pngwing.com/pngs/103/532/png-transparent-headphones-beats-electronics-wireless-outdoor-tech-privates-sound-headphones-electronics-bluetooth-sound-thumbnail.png",
  ),
  Product(
    id: 4,
    title: "Leather Backpack",
    price: 69.99,
    imageUrl:
        "https://w7.pngwing.com/pngs/75/195/png-transparent-backpack-messenger-bags-leather-canvas-backpack-brown-messenger-bag-vintage-clothing-thumbnail.png",
  ),
  Product(
    id: 5,
    title: "Running Shoes",
    price: 59.99,
    imageUrl:
        "https://w7.pngwing.com/pngs/496/28/png-transparent-air-force-sneakers-nike-shoe-running-nike-blue-white-outdoor-shoe-thumbnail.png",
  ),
  Product(
    id: 6,
    title: "Bluetooth Speaker",
    price: 39.99,
    imageUrl:
        "https://w7.pngwing.com/pngs/448/402/png-transparent-wireless-speaker-loudspeaker-bluetooth-jbl-speakers-transmitter-stereophonic-sound-speakers-thumbnail.png",
  ),
  Product(
    id: 1,
    title: "Wireless Earbuds",
    price: 49.99,
    imageUrl:
        "https://w7.pngwing.com/pngs/188/683/png-transparent-headphones-jbl-mobile-phones-wireless-bluetooth-bluetooth-stereophonic-sound-internet-electronic-device-thumbnail.png",
  ),
  Product(
    id: 2,
    title: "Smart Watch",
    price: 99.99,
    imageUrl:
        "https://w7.pngwing.com/pngs/882/409/png-transparent-smart-watch-thumbnail.png",
  ),
  Product(
    id: 3,
    title: "Gaming Headset",
    price: 79.99,
    imageUrl:
        "https://w7.pngwing.com/pngs/103/532/png-transparent-headphones-beats-electronics-wireless-outdoor-tech-privates-sound-headphones-electronics-bluetooth-sound-thumbnail.png",
  ),
  Product(
    id: 4,
    title: "Leather Backpack",
    price: 69.99,
    imageUrl:
        "https://w7.pngwing.com/pngs/75/195/png-transparent-backpack-messenger-bags-leather-canvas-backpack-brown-messenger-bag-vintage-clothing-thumbnail.png",
  ),
  Product(
    id: 5,
    title: "Running Shoes",
    price: 59.99,
    imageUrl:
        "https://w7.pngwing.com/pngs/496/28/png-transparent-air-force-sneakers-nike-shoe-running-nike-blue-white-outdoor-shoe-thumbnail.png",
  ),
  Product(
    id: 6,
    title: "Bluetooth Speaker",
    price: 39.99,
    imageUrl:
        "https://w7.pngwing.com/pngs/448/402/png-transparent-wireless-speaker-loudspeaker-bluetooth-jbl-speakers-transmitter-stereophonic-sound-speakers-thumbnail.png",
  ),
  Product(
    id: 1,
    title: "Wireless Earbuds",
    price: 49.99,
    imageUrl:
        "https://w7.pngwing.com/pngs/188/683/png-transparent-headphones-jbl-mobile-phones-wireless-bluetooth-bluetooth-stereophonic-sound-internet-electronic-device-thumbnail.png",
  ),
  Product(
    id: 2,
    title: "Smart Watch",
    price: 99.99,
    imageUrl:
        "https://w7.pngwing.com/pngs/882/409/png-transparent-smart-watch-thumbnail.png",
  ),
  Product(
    id: 3,
    title: "Gaming Headset",
    price: 79.99,
    imageUrl:
        "https://w7.pngwing.com/pngs/103/532/png-transparent-headphones-beats-electronics-wireless-outdoor-tech-privates-sound-headphones-electronics-bluetooth-sound-thumbnail.png",
  ),
  Product(
    id: 4,
    title: "Leather Backpack",
    price: 69.99,
    imageUrl:
        "https://w7.pngwing.com/pngs/75/195/png-transparent-backpack-messenger-bags-leather-canvas-backpack-brown-messenger-bag-vintage-clothing-thumbnail.png",
  ),
  Product(
    id: 5,
    title: "Running Shoes",
    price: 59.99,
    imageUrl:
        "https://w7.pngwing.com/pngs/496/28/png-transparent-air-force-sneakers-nike-shoe-running-nike-blue-white-outdoor-shoe-thumbnail.png",
  ),
  Product(
    id: 6,
    title: "Bluetooth Speaker",
    price: 39.99,
    imageUrl:
        "https://w7.pngwing.com/pngs/448/402/png-transparent-wireless-speaker-loudspeaker-bluetooth-jbl-speakers-transmitter-stereophonic-sound-speakers-thumbnail.png",
  ),
];

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              colorFilter: const ColorFilter.mode(kTextColor, BlendMode.srcIn),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              colorFilter: const ColorFilter.mode(kTextColor, BlendMode.srcIn),
            ),
            onPressed: () {},
          ),
          const SizedBox(width: kDefaultPaddin / 2),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 items per row
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            final product = products[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        product.imageUrl,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(
                          Icons.error,
                          size: 50,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      product.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "\$${product.price.toStringAsFixed(2)}",
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
