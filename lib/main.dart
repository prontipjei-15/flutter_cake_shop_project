import 'package:flutter/material.dart';
import 'package:flutter_cake_shop_project/views/splash_screen_ui.dart';
import 'package:flutter_cake_shop_project/theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const FlutterCakeShopProject());
}

class FlutterCakeShopProject extends StatelessWidget {
  const FlutterCakeShopProject({super.key});

  @override
  Widget build(BuildContext context) {
    final kanit = GoogleFonts.kanit();
    final baseTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: cakeRed,
        primary: cakeRed,
        surface: cakePink, 
      ),
      scaffoldBackgroundColor: cakePink,
    );

    return MaterialApp(
      title: 'สายด่วนกินเค้ก',
      debugShowCheckedModeBanner: false,
      theme: baseTheme.copyWith(
        textTheme: baseTheme.textTheme.apply(
          fontFamily: kanit.fontFamily,
          fontFamilyFallback: kanit.fontFamilyFallback,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: cakeRed,
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
        ),
      ),
      home: const SplashScreenUI(),
    );
  }
}
