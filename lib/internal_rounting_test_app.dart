library internal_rounting_test_app;

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InitialRoutePage extends StatelessWidget {
  const InitialRoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Column(
            children: [
              const Text('Initial-Route'),
              FilledButton(
                onPressed: () => context.go('/internal-route-page-1'),
                child: const Text('Page 1'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
