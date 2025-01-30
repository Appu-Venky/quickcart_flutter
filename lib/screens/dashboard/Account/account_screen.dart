import 'package:flutter/material.dart';
import 'package:quickcart/constants.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          "My Account",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: kthemecolor,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Profile Section
            Container(
              color: kthemecolor,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    foregroundImage:
                        const AssetImage('assets/images/venky_profile.jpg'),
                    onForegroundImageError: (exception, stackTrace) {
                      debugPrint('Image loading error: $exception');
                    },
                    child: const Icon(
                      Icons.person,
                      color: kthemecolor,
                      size: 40,
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Venkatesh',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'venkatesh@gmail.com',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Options Section
            _buildOptionTile(
              context,
              icon: Icons.shopping_bag,
              title: 'My Orders',
              onTap: () {
                // Navigate to My Orders screen
              },
            ),
            _buildOptionTile(
              context,
              icon: Icons.favorite,
              title: 'Wishlist',
              onTap: () {
                // Navigate to Wishlist screen
              },
            ),
            _buildOptionTile(
              context,
              icon: Icons.location_on,
              title: 'Saved Addresses',
              onTap: () {
                // Navigate to Saved Addresses screen
              },
            ),
            _buildOptionTile(
              context,
              icon: Icons.credit_card,
              title: 'Payment Methods',
              onTap: () {
                // Navigate to Payment Methods screen
              },
            ),
            _buildOptionTile(
              context,
              icon: Icons.settings,
              title: 'Settings',
              onTap: () {
                // Navigate to Settings screen
              },
            ),
            const Divider(height: 1, thickness: 1, color: Colors.grey),

            // Logout Section
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: TextButton(
                onPressed: () {
                  // Handle logout
                },
                child: const Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper to build option tiles
  Widget _buildOptionTile(BuildContext context,
      {required IconData icon,
      required String title,
      required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(color: Colors.grey, width: 0.5),
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: kthemecolor,
              size: 24,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: kthemecolor,
            ),
          ],
        ),
      ),
    );
  }
}
