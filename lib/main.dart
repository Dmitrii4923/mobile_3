import 'package:flutter/material.dart';

import 'screens/course_screen.dart';
import 'screens/deep_relax_screen.dart';
import 'screens/medinow_screen.dart';
import 'screens/popular_menu_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoGallery(),
    );
  }
}

class DemoGallery extends StatefulWidget {
  const DemoGallery({super.key});

  @override
  State<DemoGallery> createState() => _DemoGalleryState();
}

class _DemoGalleryState extends State<DemoGallery> {
  int _index = 0;

  final List<Widget> _screens = const [
    MedinowScreen(),
    DeepRelaxScreen(),
    PopularMenuScreen(),
    CourseScreen(),
  ];

  void _goNext() => setState(() => _index = (_index + 1) % _screens.length);
  void _goPrev() =>
      setState(() => _index = (_index - 1 + _screens.length) % _screens.length);

  @override
  Widget build(BuildContext context) {
    final screenBackground = _index == 0
        ? const Color(0xFF1aa9b7)
        : const Color(0xFFebeff0);

    return Scaffold(
      backgroundColor: screenBackground,
      body: Center(
        child: Container(
          width: 390,
          height: 844,
          decoration: BoxDecoration(
            color: screenBackground,
            borderRadius: BorderRadius.circular(28),
          ),
          child: Stack(
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 350),
                transitionBuilder: (child, animation) => FadeTransition(
                  opacity: animation,
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(0.12, 0),
                      end: Offset.zero,
                    ).animate(animation),
                    child: child,
                  ),
                ),
                child: KeyedSubtree(
                  key: ValueKey<int>(_index),
                  child: ClipRect(
                    child: FittedBox(
                      fit: BoxFit.contain,
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: 390 / 0.82,
                        height: 844 / 0.82,
                        child: _screens[_index],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 18,
                right: 18,
                bottom: 18,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _navButton(
                      icon: Icons.arrow_back_ios_new_rounded,
                      onTap: _goPrev,
                    ),
                    _navButton(
                      icon: Icons.arrow_forward_ios_rounded,
                      onTap: _goNext,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navButton({required IconData icon, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 46,
        height: 46,
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.8),
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.08),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Icon(icon, color: const Color(0xFF2A2A32), size: 19),
      ),
    );
  }
}
