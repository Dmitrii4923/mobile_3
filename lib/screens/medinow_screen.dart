import 'package:flutter/material.dart';

class MedinowScreen extends StatelessWidget {
  const MedinowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xFF1aa9b7),
      child: Stack(
        children: [
          Positioned(
            top: 134,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'medinow',
                style: TextStyle(
                  fontSize: 72,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                  letterSpacing: -4,
                  height: 1,
                ),
              ),
            ),
          ),
          Positioned(
            top: 220,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Meditate With Us!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: Colors.white.withValues(alpha: 0.96),
                  letterSpacing: -0.8,
                ),
              ),
            ),
          ),
          Positioned(
            top: 280,
            left: 30,
            right: 30,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 72,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(38),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Sign in with Apple',
                    style: TextStyle(
                      color: Color(0xFF0d3c43),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  height: 72,
                  decoration: BoxDecoration(
                    color: const Color(0xFFbce8ef),
                    borderRadius: BorderRadius.circular(38),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Continue with Email or Phone',
                    style: TextStyle(
                      color: Color(0xFF0d3c43),
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                const Text(
                  'Continue With Google',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.7,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 300,
              child: Stack(
                children: [
                  Positioned(
                    left: -8,
                    right: -8,
                    bottom: 0,
                    child: Image.asset(
                      'assets/meditation_person.png',
                      width: 390,
                      height: 310,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
