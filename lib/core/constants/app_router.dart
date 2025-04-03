import 'package:go_router/go_router.dart';
import 'package:graduation_project1/core/constants/routes.dart';
import 'package:graduation_project1/features/auth/presentation/views/login_view.dart';
import 'package:graduation_project1/features/auth/presentation/views/register_view.dart';
import 'package:graduation_project1/features/auth/presentation/views/reset_password_view.dart';
import 'package:graduation_project1/features/layout/presentation/views/layout_view.dart';
import 'package:graduation_project1/features/profile/presentation/views/profile_view.dart';
import 'package:graduation_project1/features/settings/presentation/views/settings_view.dart';
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
      GoRoute(
        path: Routes.resetPasswordView,
        builder: (context, state) => const ResetPasswordView(),
      ),
      ShellRoute(
        builder: (context, state, child) => LayoutView(child: child),
        routes: [
          GoRoute(
            path: Routes.profileView,
            builder: (context, state) => ProfileView(),
          ),
          GoRoute(
            path: Routes.settingsView,
            builder: (context, state) => SettingsView(),
          ),
        ],
      ),
    ],
  );
}
