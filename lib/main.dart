import 'package:esafy/providers/auth_provider.dart';
import 'package:esafy/providers/base_provider.dart';
import 'package:esafy/screens/splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<BaseProvider>(
              create: (context) => BaseProvider()),
          ChangeNotifierProvider<AuthenticationProvider>(
              create: (context) => AuthenticationProvider()),
        ],
        child: const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        ));
  }
}
