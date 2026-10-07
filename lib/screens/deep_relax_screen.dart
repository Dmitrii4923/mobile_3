import 'package:flutter/material.dart';

class DeepRelaxScreen extends StatelessWidget {
  const DeepRelaxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xFFebeff0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Container(
                width: double.infinity,
                height: 260,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: const Color(0xFFE7C75A),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        'assets/dock_person.png',
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 26),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: const Text(
                'Peter Mach',
                style: TextStyle(
                  color: Color(0xFF2E2E32),
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, top: 8),
              child: const Text(
                'Mind Deep Relax',
                style: TextStyle(
                  color: Color(0xFF2E2E32),
                  fontSize: 38,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -1.5,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22, top: 18),
              child: const Text(
                'Join the Community as we prepare over 33 days to relax and feel joy with the mind and happiness session across the World.',
                style: TextStyle(
                  color: Color(0xFF2E2E32),
                  fontSize: 24,
                  height: 1.35,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Container(
                width: double.infinity,
                height: 84,
                decoration: BoxDecoration(
                  color: const Color(0xFF1aa9b7),
                  borderRadius: BorderRadius.circular(34),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white,
                      size: 32,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Play Next Session',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 18),
            _sessionItem(
              'Sweet Memories',
              'December 29 Pre-Launch',
              const Color(0xFF6886F1),
            ),
            _sessionItem(
              'A Day Dream',
              'December 29 Pre-Launch',
              const Color(0xFF40AFB3),
            ),
            _sessionItem(
              'Mind Explore',
              'December 29 Pre-Launch',
              const Color(0xFFEE8C44),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sessionItem(String title, String subtitle, Color color) {
    return Container(
      margin: const EdgeInsets.only(left: 22, right: 22, top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFFE3E7E7))),
      ),
      child: Row(
        children: [
          Container(
            width: 76,
            height: 76,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 38,
            ),
          ),
          const SizedBox(width: 18),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xFF2E2E32),
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -1,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Color(0xFF7d7d7d),
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: const Color(0xFFE5E5E5),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ],
      ),
    );
  }
}
