import 'package:go_router/go_router.dart';
import 'package:graduation_project1/core/constants/routes.dart';
import 'package:graduation_project1/features/auth/presentation/views/login_view.dart';
import 'package:graduation_project1/features/auth/presentation/views/register_view.dart';
import 'package:graduation_project1/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: Routes.loginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: Routes.registerView,
        builder: (context, state) => const RegisterView(),
      ),
    ],
  );
}
