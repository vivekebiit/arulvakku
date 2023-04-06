import 'package:arulvakku/core/shared_provider/shared_providers.dart';
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
    ref.read(sharedPrefHelperProvider).saveAuthToken('10001');
  }

  @override
  Widget build(BuildContext context) {
    final readtext = ref.watch(sharedPrefHelperProvider).authToken;
    return Scaffold(
      appBar: AppBar(
        title: Text('$readtext'),
      ),
    );
  }
}
