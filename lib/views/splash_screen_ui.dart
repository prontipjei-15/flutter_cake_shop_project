import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_cake_shop_project/views/cake_shop_list_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  Timer? _navigationTimer;

  @override
  void initState() {
    super.initState();
    _navigationTimer = Timer(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute<void>(
          builder: (context) => const CakeShopListUI(),
        ),
      );
    });
  }

  @override
  void dispose() {
    _navigationTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/bg_welcome.png',
            fit: BoxFit.cover,
          ),
          Container(color: Colors.white.withValues(alpha: 0.12)),
          SafeArea(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.11),
                const Text(
                  'สายด่วนกินเค้ก',
                  style: TextStyle(
                    color: Color(0xFFE53935),
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  'CAKE CALL FAST',
                  style: TextStyle(
                    color: Color(0xD9E53935),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(height: 22),
                const CircularProgressIndicator(
                  color: Color(0xFF455A64),
                  strokeWidth: 3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
