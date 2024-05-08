import 'package:go_router/go_router.dart';
import 'route_temp_1.dart';
import 'route_temp_2.dart';
import 'route_temp_3.dart';

class InternalRoutingConfig {
  InternalRoutingConfig._privateConstructor();

  static final InternalRoutingConfig _instance =
      InternalRoutingConfig._privateConstructor();

  static InternalRoutingConfig get instance => _instance;

  final String initialRoute = 'internal-route';

  List<GoRoute> get routes => [
        GoRoute(
          path: 'internal-route-page-1',
          name: 'IntenalRoutePage1',
          builder: (context, state) => const InternalRoutePage1(),
        ),
        GoRoute(
          path: 'internal-route-page-2',
          name: 'IntenalRoutePage2',
          builder: (context, state) => const InternalRoutePage2(),
        ),
        GoRoute(
          path: 'internal-route-page-3',
          name: 'IntenalRoutePage3',
          builder: (context, state) => const InternalRoutePage3(),
        ),
      ];
}
