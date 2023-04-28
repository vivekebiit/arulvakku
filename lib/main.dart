import 'package:arulvakku/features/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'common/app_color.dart';
import 'routes/app_routes.dart';
import 'routes/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'Latha',
          primarySwatch: AppColor.teal,
          textTheme: const TextTheme(
              labelMedium: TextStyle(color: Colors.black),
              bodyLarge: TextStyle(color: Colors.black),
              bodyMedium: TextStyle(color: Colors.black))),
      initialRoute: Routes.splash,
      home: const SplashScreen(),
      routes: AppRoutes.routes,
      onGenerateRoute: AppRoutes.generateRoutes,
    );
  }
}
