import 'package:arulvakku/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _startHomeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }

  ///Home screen navigation intent
  _startHomeScreen() {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context).pushNamedAndRemoveUntil(
          Routes.home, (Route<dynamic> route) => false);
    });
  }
}
