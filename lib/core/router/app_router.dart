import 'package:go_router/go_router.dart';
import '../../features/commissioner/presentation/pages/guides_page.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const TouristPage(),
      ),
    ],
  );
}
