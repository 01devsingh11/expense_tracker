import 'package:expense_tracer_app/src/features/splash/presentation/screen/splash_screen.dart';
import 'package:expense_tracer_app/src/routes/route_guard.dart';
import 'package:expense_tracer_app/src/routes/route_observer.dart';
import 'package:expense_tracer_app/src/routes/route_paths.dart';
import 'package:go_router/go_router.dart';
import '../core/widgets/error/error_screen.dart';
import '../features/dashboard/presentation/screen/dashboard_screen.dart';

GoRouter appRouter = GoRouter(
  initialLocation: RoutePaths.homeScreen.path,
  observers: [routeObserver],
  errorBuilder: (context, state) => ErrorScreen(),
  routes: [
    GoRoute(
      path: RoutePaths.splashScreen.path,
      name: RoutePaths.splashScreen.name,
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: RoutePaths.homeScreen.path,
      name: RoutePaths.homeScreen.name,
      builder: (context, state) => DashBoardScreen(),
    ),
  ],
  redirect: (context, state) => AuthGuard.checkRedirect(context, state),
);
