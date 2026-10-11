import 'package:doctor_appointment_consultation_app/core/routing/routes.dart';
import 'package:doctor_appointment_consultation_app/features/auth/presentation/screens/login_screen.dart';
import 'package:doctor_appointment_consultation_app/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:doctor_appointment_consultation_app/features/home/presentation/screens/home_screen.dart';
import 'package:doctor_appointment_consultation_app/features/main/presentation/screens/main_layout.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final _router = GoRouter(
    routes: [
      GoRoute(path: Routes.login, builder: (context, state) => LoginScreen()),
      GoRoute(
        path: Routes.signUp,
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: Routes.mainLayout,
        builder: (context, state) => MainLayout(),
      ),
      GoRoute(path: Routes.home, builder: (context, state) => HomeScreen()),
    ],
  );
  static GoRouter get createRouter => _router;
}
