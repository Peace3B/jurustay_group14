import 'package:go_router/go_router.dart';
import '../../features/tourist/presentation/pages/guide_page.dart';

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
