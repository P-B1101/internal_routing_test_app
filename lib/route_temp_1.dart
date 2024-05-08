library internal_rounting_test_app;

import 'package:flutter/material.dart';

class InternalRoutePage1 extends StatelessWidget {
  const InternalRoutePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: const Center(
        child: Text('Internal-Route-1'),
      ),
    );
  }
}
