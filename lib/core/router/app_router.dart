import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Import Commissioner Pages
import '../../features/commissioner/presentation/pages/dashboard_page.dart';
import '../../features/commissioner/presentation/pages/guides_page.dart';
import '../../features/commissioner/presentation/pages/profile_page.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/dashboard', // Start here
    routes: [
      GoRoute(
        path: '/dashboard',
        builder: (context, state) => const CommissionerDashboardPage(),
      ),
      GoRoute(
        path: '/submit-tour',
        builder: (context, state) => const GuidesPage(),
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => const ProfilePage(),
      ),
    ],
  );
}
