library internal_rounting_test_app;

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'internal_routing_config.dart';

class InternalRoutePage3 extends StatelessWidget {
  const InternalRoutePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: Column(
          children: [
            const Text('Internal-Route-3'),
            FilledButton(
              onPressed: () => context.go('/internal-route-page-1'),
              child: const Text('Page 1'),
            ),
            FilledButton(
              onPressed: () =>
                  context.go('/${InternalRoutingConfig.instance.initialRoute}'),
              child: const Text('Initial Route'),
            ),
          ],
        ),
      ),
    );
  }
}
