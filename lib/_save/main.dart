import 'package:daily_record/pages/home_page.dart';
import 'package:daily_record/pages/login_page.dart';
import 'package:daily_record/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:daily_record/controllers/theme_controller.dart';
import 'package:daily_record/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: ThemeController.instance,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Daily Record',
          theme: ThemeData(
            brightness: ThemeController.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => const MainPage(),
            '/register': (context) => const RegisterPage(),
            '/login': (context) => const LoginPage(),
            '/home': (context) => const HomePage(),
          },
        );
      },
    );
  }
}
