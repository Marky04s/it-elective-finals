import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/categories_screen.dart';
import '../screens/favourite_screen.dart';
import '../screens/profile_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int index = 0;

  final screens = const [
    HomeScreen(),
    CategoriesScreen(),
    FavouriteScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[index],
      bottomNavigationBar: _customNavBar(),
    );
  }

  Widget _customNavBar() {
    return Container(
      height: 82, // thinner navbar
      padding: const EdgeInsets.symmetric(vertical: 12),
      margin: const EdgeInsets.only(left: 18, right: 18, bottom: 18),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FD),
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 12,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _item(Icons.home_filled, "Home", 0),
          _item(Icons.grid_view_rounded, "Categories", 1),
          _item(Icons.favorite_border_rounded, "Favourite", 2),
          _item(Icons.person_outline_rounded, "Profile", 3),
        ],
      ),
    );
  }

  Widget _item(IconData icon, String label, int i) {
    final isSelected = index == i;

    return GestureDetector(
      onTap: () => setState(() => index = i),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // SELECTED CIRCLE
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? Colors.black : Colors.transparent,
            ),
            child: Icon(
              icon,
              size: 24,
              color: isSelected ? const Color(0xFFE0B420) : Colors.grey.shade500,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: isSelected ? const Color(0xFFFFD700) : Colors.grey.shade500,
            ),
          ),
        ],
      ),
    );
  }
}