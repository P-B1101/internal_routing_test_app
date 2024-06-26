library internal_rounting_test_app;

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'internal_routing_config.dart';

class InternalRoutePage2 extends StatelessWidget {
  const InternalRoutePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellowAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Internal-Route-2'),
              FilledButton(
                onPressed: () => context.go('${InternalRoutingConfig.instance.rootRoute(context)}/internal-route-page-3'),
                child: const Text('Page 3'),
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
