import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quickcart/constants.dart';
import 'package:quickcart/models/jewwllery.dart';

import '../../../models/Dresses.dart';
import '../../../models/bagProduct.dart';
import '../../../models/footwear.dart';
import '../../details/details_screen.dart';
import 'components/categorries.dart';
import 'components/item_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {
  final List<String> categories = [
    "Hand bag",
    "Jewellery",
    "Footwear",
    "Dresses",
  ];
  int selectedIndex = 0;

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: Text(
              "Women",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Categories(
            categories: categories,
            selectedIndex: selectedIndex,
            onCategorySelected: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
          Expanded(
            child: _buildCategoryContent(selectedIndex),
          ),
        ],
      ),
    );
  }

  // Helper to fetch products based on category index
  List<dynamic> _getProductsForCategory(int index) {
    switch (index) {
      case 0:
        return products;
      case 1:
        return jewellery;
      case 2:
        return footwears;
      case 3:
        return dressesProducts;
      default:
        return [];
    }
  }

  // Build category content
  Widget _buildCategoryContent(int index) {
    final productsForCategory = _getProductsForCategory(index);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: GridView.builder(
        itemCount: productsForCategory.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: kDefaultPaddin,
          crossAxisSpacing: kDefaultPaddin,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, i) => ItemCard(
          product: productsForCategory[i],
          press: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  DetailsScreen(product: productsForCategory[i]),
            ),
          ),
        ),
      ),
    );
  }
}
