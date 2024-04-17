import 'package:biometric_verification_app/src/features/auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'route_consts.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      //* Login
      GoRoute(
        path: RouteConsts.loginRoute,
        name: RouteConsts.loginRoute,
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: LoginScreen(),
          );
        },
      ),
      //* Signup
      GoRoute(
        path: RouteConsts.signupRoute,
        name: RouteConsts.signupRoute,
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: SignupScreen(),
          );
        },
      ),
    ],
  );
}
