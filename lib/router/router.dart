import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_test/home/home_screen.dart';
import 'package:tp_test/screens/create_order/create_order_screen.dart';

final GoRouter router = GoRouter(
  debugLogDiagnostics: kDebugMode,
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (_, _) => HomeScreen(),
      name: 'home_screen',
      routes: <RouteBase>[GoRoute(path: 'create_order', builder: (context, state) => CreateOrderScreen())],
    ),
  ],
);
