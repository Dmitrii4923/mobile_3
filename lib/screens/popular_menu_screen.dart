import 'package:flutter/material.dart';

class PopularMenuScreen extends StatelessWidget {
  const PopularMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xFFE9EEF0),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: [
                Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEAD6DE),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Color(0xFF2B2B32),
                    size: 30,
                  ),
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Text(
                    'Popular Menu',
                    style: TextStyle(
                      color: Color(0xFF2D2D32),
                      fontSize: 42,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -1.8,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Container(
              height: 76,
              decoration: BoxDecoration(
                color: const Color(0xFFE6EEF1),
                borderRadius: BorderRadius.circular(28),
              ),
              child: Row(
                children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        'Search',
                        style: TextStyle(
                          color: Color(0xFF91979B),
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 72,
                    height: 72,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFf0c6d0),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: const Icon(
                      Icons.search_rounded,
                      color: Color(0xFF2B2B32),
                      size: 34,
                    ),
                  ),
                  Container(
                    width: 72,
                    height: 72,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFf0c6d0),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: const Icon(
                      Icons.menu_rounded,
                      color: Color(0xFF2B2B32),
                      size: 34,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 18),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(top: 8, bottom: 12),
              children: [
                menuRow(
                  'Original Salad',
                  'Lovy Food',
                  8,
                  const Color(0xFFF6A548),
                  'salad',
                ),
                menuRow(
                  'Fresh Salad',
                  'Cloudy Resto',
                  10,
                  const Color(0xFFE8BFAE),
                  'salad',
                ),
                menuRow(
                  'Yummie Ice Cream',
                  'Circlo Resto',
                  6,
                  const Color(0xFFE7D4A0),
                  'icecream',
                ),
                menuRow(
                  'Vegan Special',
                  'Haty Food',
                  11,
                  const Color(0xFF7DA083),
                  'vegan',
                ),
                menuRow(
                  'Mixed Pasta',
                  'Recto Food',
                  13,
                  const Color(0xFFE4D1B5),
                  'pasta',
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(18, 0, 18, 20),
            height: 92,
            decoration: BoxDecoration(
              color: const Color(0xFFF5F6F7),
              borderRadius: BorderRadius.circular(28),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _bottomMenuItem(true, Icons.home_rounded, 'Home'),
                _bottomMenuItem(false, Icons.shopping_bag_outlined, 'Cart'),
                _bottomMenuItem(false, Icons.bookmark_border_rounded, 'Orders'),
                _bottomMenuItem(false, Icons.person_rounded, 'Profile'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget menuRow(
    String title,
    String subtitle,
    int price,
    Color tone,
    String type,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFf1f3f5),
        borderRadius: BorderRadius.circular(26),
      ),
      child: Row(
        children: [
          Container(
            width: 84,
            height: 84,
            decoration: BoxDecoration(
              color: tone,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Center(child: _menuThumb(type)),
          ),
          const SizedBox(width: 18),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xFF2D2D32),
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -1,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Color(0xFF7B7E85),
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Text(
            '\$$price',
            style: const TextStyle(
              color: Color(0xFFEB6D78),
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  Widget _menuThumb(String type) {
    if (type == 'icecream') {
      return const Icon(Icons.icecream_rounded, size: 40, color: Colors.white);
    }
    if (type == 'vegan') {
      return const Icon(Icons.eco_rounded, size: 40, color: Colors.white);
    }
    if (type == 'pasta') {
      return const Icon(
        Icons.restaurant_menu_rounded,
        size: 40,
        color: Colors.white,
      );
    }
    return const Icon(
      Icons.local_dining_rounded,
      size: 40,
      color: Colors.white,
    );
  }

  Widget _bottomMenuItem(bool active, IconData icon, String label) {
    return Expanded(
      child: Container(
        height: 76,
        margin: const EdgeInsets.all(6),
        decoration: active
            ? BoxDecoration(
                color: const Color(0xFFF2C7D1),
                borderRadius: BorderRadius.circular(20),
              )
            : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 32,
              color: active ? const Color(0xFF2D2D32) : const Color(0xFF7B7E85),
            ),
            if (active)
              Text(
                label,
                style: const TextStyle(
                  color: Color(0xFF2D2D32),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
