library internal_rounting_test_app;

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:internal_rounting_test_app/internal_routing_config.dart';

class InitialRoutePage extends StatelessWidget {
  const InitialRoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Initial-Route'),
              FilledButton(
                onPressed: () => context.go('${InternalRoutingConfig.instance.rootRoute(context)}/internal-route-page-1'),
                child: const Text('Page 1'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
