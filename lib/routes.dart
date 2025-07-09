import 'package:go_router/go_router.dart';
import 'package:topstructure/features/auth/presentation/screen/login_screen.dart';

class Routes {
  const Routes._();
  static const splash = '/';
  static const onboarding = '/onboarding';
  static const login = '/login';
  static const register = '/register';
}

// Inside your app widget
final GoRouter goRouter = GoRouter(
  initialLocation: Routes.splash,
  routes: [
    //GoRoute(path: Routes.splash, builder: (context, state) => SplashScreen()),
    // GoRoute(path: Routes.onboarding, builder: (context, state) => OnboardingPage()),
    GoRoute(path: Routes.login, builder: (context, state) => LoginScreen()),
  ],
);
