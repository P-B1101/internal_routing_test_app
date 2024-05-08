library internal_rounting_test_app;

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:internal_rounting_test_app/internal_routing_config.dart';

class InternalRoutePage1 extends StatelessWidget {
  const InternalRoutePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.redAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Internal-Route-1'),
              FilledButton(
                onPressed: () => context.go('/${InternalRoutingConfig.instance.initialRoute}/internal-route-page-2'),
                child: const Text('Page 2'),
              ),
              FilledButton(
                onPressed: () =>
                    context.go('/${InternalRoutingConfig.instance.initialRoute}'),
                child: const Text('Initial Route'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
