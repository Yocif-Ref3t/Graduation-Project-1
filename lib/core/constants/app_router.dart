import 'package:go_router/go_router.dart';
import 'package:graduation_project1/core/constants/routes.dart';
import 'package:graduation_project1/features/auth/presentation/views/complete_profile_view.dart';
import 'package:graduation_project1/features/auth/presentation/views/login_view.dart';
import 'package:graduation_project1/features/auth/presentation/views/register_view.dart';
import 'package:graduation_project1/features/auth/presentation/views/reset_password_view.dart';
import 'package:graduation_project1/features/check/presentation/views/predict_view.dart';
import 'package:graduation_project1/features/home/presentation/views/home_view.dart';
import 'package:graduation_project1/features/layout/presentation/views/layout_view.dart';
import 'package:graduation_project1/features/profile/presentation/views/change_password_view.dart';
import 'package:graduation_project1/features/profile/presentation/views/profile_data_view.dart';
import 'package:graduation_project1/features/profile/presentation/views/profile_view.dart';
import 'package:graduation_project1/features/settings/presentation/views/help_view.dart';
import 'package:graduation_project1/features/settings/presentation/views/language_view.dart';
import 'package:graduation_project1/features/settings/presentation/views/settings_view.dart';
import 'package:graduation_project1/features/splash/presentation/views/splash_view.dart';

import '../../features/check/presentation/views/predict_result_view.dart';

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
        path: Routes.completeProfileView,
        builder: (context, state) => const CompleteProfileView(),
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
          GoRoute(
            path: Routes.homeView,
            builder: (context, state) => HomeView(),
          ),
        ],
      ),
      GoRoute(
        path: Routes.languageView,
        builder: (context, state) => LanguageView(),
      ),
      GoRoute(
        path: Routes.changePasswordView,
        builder: (context, state) => ChangePasswordView(),
      ),
      GoRoute(
        path: Routes.profileDataView,
        builder: (context, state) => ProfileDataView(),
      ),
      GoRoute(
        path: Routes.helpView,
        builder: (context, state) => HelpView(),
      ),
      GoRoute(
        path: Routes.PredictView,
        builder: (context, state) => PredictView(),
      ),
      GoRoute(
        path: Routes.predictResultView,
        builder: (context, state) => PredictResultView(),
      ),
    ],
  );
}
