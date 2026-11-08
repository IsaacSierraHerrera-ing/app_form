import 'package:go_router/go_router.dart';
import 'package:app_form/presentation/screen/buttons/buttons_screen.dart';
import 'package:app_form/presentation/screen/cards/cards_screen.dart';
import 'package:app_form/presentation/screen/home/home_screen.dart';
import 'package:app_form/presentation/screen/about/about_screen.dart';
import 'package:app_form/presentation/screen/login/login_screen.dart';
import 'package:app_form/presentation/screen/dashboard/dashboard_screen.dart';
import 'package:app_form/data/auth/auth_repository.dart';

final appRouter = GoRouter(
  initialLocation: '/login',
  redirect: (context, state) {
    final isLoggedIn = authRepository.currentUser != null;
    final isLoginRoute = state.matchedLocation == '/login';

    if (!isLoggedIn && !isLoginRoute) {
      return '/login';
    }
    if (isLoggedIn && isLoginRoute) {
      return '/dashboard';
    }
    return null;
  },
  routes: [
    GoRoute(
      path: '/login',
      name: 'Login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/dashboard',
      name: 'Dashboard',
      builder: (context, state) => const DashboardScreen(),
    ),
    GoRoute(
      path: '/',
      name: 'Home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: 'Botones',
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      name: 'tarjetas',
      builder: (context, state) => const CardsScreen(),
    ),
    GoRoute(
      path: '/about',
      name: 'Acerca de',
      builder: (context, state) => const AboutScreen(),
    ),
  ],
);
